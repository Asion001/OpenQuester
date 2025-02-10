import { FindOptionsWhere, In, type Repository } from "typeorm";

import { type Database } from "database/Database";
import { User } from "database/models/User";
import { PaginatedResults } from "database/pagination/PaginatedResults";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { ClientError } from "error/ClientError";
import { Session } from "types/auth/session";
import { PaginationOpts } from "types/pagination/PaginationOpts";
import { SelectOptions } from "types/SelectOptions";
import { RegisterUser } from "types/user/RegisterUser";
import { ValueUtils } from "utils/ValueUtils";

const USER_SELECT_FIELDS: (keyof User)[] = [
  "id",
  "username",
  "email",
  "birthday",
  "avatar",
  "discord_id",
  "created_at",
  "updated_at",
  "is_deleted",
];

export class UserRepository {
  private static _instance: UserRepository;
  private _db: Database;
  private _repository: Repository<User>;

  private constructor(db: Database) {
    this._db = db;
    this._repository = db.getRepository(User);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new UserRepository(db);
    }

    return this._instance;
  }

  // TODO: Fix issue with double querying for one user
  public async get(id: number, selectOptions?: SelectOptions<User>) {
    return this._repository.findOne({
      where: { id, is_deleted: false },
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    }) as Promise<User>;
  }

  public async find(
    where: FindOptionsWhere<User>,
    selectOptions?: SelectOptions<User>
  ) {
    return this._repository.find({
      where,
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    });
  }

  public async findOne(
    where: FindOptionsWhere<User>,
    selectOptions?: SelectOptions<User>
  ) {
    return this._repository.findOne({
      where,
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    });
  }

  public findByIds(
    ids: number[],
    selectOptions?: SelectOptions<User>
  ): Promise<User[]> {
    return this._repository.find({
      where: { id: In(ids) },
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    });
  }

  public async list(
    paginationOpts: PaginationOpts<User>,
    selectOptions?: SelectOptions<User>
  ) {
    const alias = this._repository.metadata.name.toLowerCase();

    const qb = this._repository
      .createQueryBuilder(alias)
      .select(
        selectOptions?.select
          ? selectOptions.select.map((field) => `user.${field}`)
          : USER_SELECT_FIELDS.map((field) => `user.${field}`)
      );

    if (selectOptions?.relations) {
      for (const relation of selectOptions.relations) {
        qb.leftJoinAndSelect(`user.${relation}`, relation);
      }
    }

    return PaginatedResults.paginateEntityAndSelect<User>(qb, paginationOpts);
  }

  public async create(db: Database, data: RegisterUser) {
    const whereOpts: FindOptionsWhere<User>[] = [{ username: data.username }];

    if (data.email) {
      whereOpts.push({ email: data.email });
    }

    if (data.discord_id) {
      whereOpts.push({ discord_id: data.discord_id });
    }

    const existing = await this._repository.findOne({
      select: ["id"],
      where: whereOpts,
    });

    if (existing && existing.id >= 0) {
      throw new ClientError(ClientResponse.USER_ALREADY_EXISTS);
    }

    // Set all data to new user instance
    let user = new User();
    await user.import({
      username: data.username,
      email: data.email,
      discord_id: data.discord_id,
      birthday: data.birthday ? new Date(data.birthday) : undefined,
      avatar: data.avatar,
      permissions: [],
      created_at: new Date(),
      updated_at: new Date(),
      is_deleted: false,
    });

    // Save new user
    user = await this._repository.save(user);

    if (data.avatar) {
      const fileUsageRepo = FileUsageRepository.getRepository(db);
      await fileUsageRepo.writeUsage(data.avatar, user);
    }

    return user;
  }

  public async delete(user: User) {
    user.is_deleted = true;
    user.updated_at = new Date();
    this.update(user);
  }

  public async update(user: User) {
    return this._repository.update(
      { id: user.id },
      {
        username: user.username,
        email: user.email,
        birthday: user.birthday ?? null,
        avatar: user.avatar ?? null,
        is_deleted: user.is_deleted,
      }
    );
  }

  public static async getUserBySession(
    db: Database,
    session: Session,
    options?: SelectOptions<User>
  ) {
    if (!session.userId) {
      throw new ClientError(
        ClientResponse.INVALID_SESSION,
        HttpStatus.UNAUTHORIZED
      );
    }

    const id = ValueUtils.validateId(session.userId);
    return this.getRepository(db).get(id, options);
  }
}
