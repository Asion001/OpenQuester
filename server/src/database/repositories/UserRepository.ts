import { type Repository } from "typeorm";
import { User } from "database/models/User";
import { type Database } from "database/Database";
import { IRegisterUser } from "types/user/IRegisterUser";
import { CryptoUtils } from "utils/CryptoUtils";
import { ValueUtils } from "utils/ValueUtils";
import { ILoginUser } from "types/user/ILoginUser";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { ISelectOptions } from "types/ISelectOptions";
import { UserOrId } from "types/user/user";
import { JWTUtils } from "utils/JWTUtils";
import { ApiContext } from "services/context/ApiContext";
import { FileUsageRepository } from "database/repositories/FileUsageRepository";
import { JWTPayload } from "types/jwt/jwt";
import { HttpStatus } from "enums/HttpStatus";

const USER_SELECT_FIELDS: (keyof User)[] = [
  "id",
  "name",
  "email",
  "birthday",
  "avatar",
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
      where: { id },
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations ?? ["avatar"],
    }) as Promise<User>;
  }

  public async list(selectOptions?: ISelectOptions<User>) {
    return this._repository.find({
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations,
    }) as Promise<User[]>;
  }

  public async create(ctx: ApiContext, data: IRegisterUser) {
    // Set all data to new user instance
    let user = new User();
    await user.import({
      name: data.name,
      email: data.email,
      password: await CryptoUtils.hash(data.password, 10, ctx.crypto),
      birthday: data.birthday
        ? ValueUtils.getBirthday(data.birthday)
        : undefined,
      avatar: data.avatar,
      permissions: [],
      created_at: new Date(),
      updated_at: new Date(),
      is_deleted: false,
    });

    // Save new user
    user = await this._repository.save(user);

    if (data.avatar) {
      const fileUsageRepo = FileUsageRepository.getRepository(ctx.db);
      await fileUsageRepo.writeUsage(data.avatar, user);
    }

    return user;
  }

  /**
   * Returns user with specified login data
   */
  public async login(data: ILoginUser) {
    return this._repository
      .createQueryBuilder("user")
      .where("user.email = :email", { email: data.login })
      .orWhere("user.name = :name", { name: data.login })
      .getOne();
  }

  public async delete(user: User) {
    const _user = await this._getUserFromInput(user);

    _user.is_deleted = true;
    this.update(_user);
  }

  public async update(user: User) {
    const _user = await this._getUserFromInput(user);

    return this._repository.update(
      { id: _user.id },
      {
        name: _user.name,
        email: _user.email,
        birthday: _user.birthday ?? null,
        avatar: _user.avatar ?? null,
        password: _user.password,
        is_deleted: _user.is_deleted,
      }
    );
  }

  public static async getUserByHeader(
    db: Database,
    authorizationHeader?: string,
    options?: ISelectOptions<User>
  ) {
    let payload: JWTPayload;

    try {
      payload = JWTUtils.getTokenPayload(authorizationHeader);
    } catch {
      throw new ClientError(
        ClientResponse.INVALID_TOKEN,
        HttpStatus.UNAUTHORIZED
      );
    }

    const id = ValueUtils.validateId(payload.id);
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
