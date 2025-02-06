import { SessionData } from "express-session";
import { FindOptionsWhere, type Repository } from "typeorm";

import { User } from "database/models/User";
import { type Database } from "database/Database";
import { ValueUtils } from "utils/ValueUtils";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { ISelectOptions } from "types/ISelectOptions";
import { UserOrId } from "types/user/user";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";
import { HttpStatus } from "enums/HttpStatus";
import { PaginatedResults } from "database/pagination/PaginatedResults";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { IRegisterUser } from "types/user/IRegisterUser";

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

  public async get(id: number, selectOptions?: ISelectOptions<User>) {
    return this._repository.findOne({
      where: { id, is_deleted: false },
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    }) as Promise<User>;
  }

  public async find(
    where: FindOptionsWhere<User>,
    selectOptions?: ISelectOptions<User>
  ) {
    return this._repository.find({
      where,
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    });
  }

  public async findOne(
    where: FindOptionsWhere<User>,
    selectOptions?: ISelectOptions<User>
  ) {
    return this._repository.findOne({
      where,
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    });
  }

  public async list(
    paginationOpts: IPaginationOpts<User>,
    selectOptions?: ISelectOptions<User>
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

  public async create(db: Database, data: IRegisterUser) {
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
    const _user = await this._getUserFromInput(user);

    _user.is_deleted = true;
    _user.updated_at = new Date();
    this.update(_user);
  }

  public async update(user: User) {
    const _user = await this._getUserFromInput(user);

    return this._repository.update(
      { id: _user.id },
      {
        username: _user.username,
        email: _user.email,
        birthday: _user.birthday ?? null,
        avatar: _user.avatar ?? null,
        is_deleted: _user.is_deleted,
      }
    );
  }

  public static async getUserBySession(
    db: Database,
    session: SessionData,
    options?: ISelectOptions<User>
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

  private async _getUserFromInput(input: UserOrId) {
    let user: User | null = null;

    if (input instanceof User) {
      return input;
    }

    if (typeof input === "number" || typeof input === "string") {
      const id = ValueUtils.validateId(input);
      user = await this._repository.findOne({ where: { id } });
    }

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    return user;
  }
}
