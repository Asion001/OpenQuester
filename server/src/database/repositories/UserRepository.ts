import { type Repository } from "typeorm";
import { User } from "../models/User";
import { type Database } from "../Database";
import { IRegisterUser } from "../../interfaces/user/IRegisterUser";
import { Crypto } from "../../interfaces/Crypto";
import { CryptoUtils } from "../../utils/CryptoUtils";
import { ValueUtils } from "../../utils/ValueUtils";
import { ILoginUser } from "../../interfaces/user/ILoginUser";
import { ClientError } from "../../error/ClientError";
import { ClientResponse } from "../../enums/ClientResponse";
import { ISelectOptions } from "../../interfaces/ISelectOptions";
import { UserOrId } from "../../types/user/user";

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
      relations: selectOptions?.relations,
    }) as Promise<User>;
  }

  public async list(selectOptions?: ISelectOptions<User>) {
    return this._repository.find({
      select: selectOptions?.select ?? USER_SELECT_FIELDS,
      relations: selectOptions?.relations,
    }) as Promise<User[]>;
  }

  public async create(data: IRegisterUser, crypto?: Crypto) {
    // Set all data to new user instance
    const user = new User();
    await user.import({
      name: data.name,
      email: data.email,
      password: await CryptoUtils.hash(data.password as string, 10, crypto),
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
    await this._repository.save(user);
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

  public async delete(user: UserOrId) {
    const _user = await this._getUserFromInput(user);

    _user.is_deleted = false;
    this.update(_user);
    return;
  }

  public async update(user: UserOrId) {
    const _user = await this._getUserFromInput(user);

    return this._repository.update(
      { id: _user.id },
      {
        name: _user.name,
        email: _user.email,
        birthday: _user.birthday,
        avatar: _user.avatar,
        password: _user.password,
        is_deleted: _user.is_deleted,
      }
    );
  }

  private async _getUserFromInput(input: UserOrId) {
    let user: User | null = null;

    if (input instanceof User) {
      user = input;
    }

    if (typeof input === "number") {
      user = await this._repository.findOne({ where: { id: input } });
    }

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    return user;
  }
}
