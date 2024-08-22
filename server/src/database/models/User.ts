import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  Unique,
  ManyToMany,
  JoinTable,
  ObjectLiteral,
  Repository,
} from "typeorm";
import { IUser } from "../../interfaces/user/IUser";
import { File } from "./File";
import { Permission } from "./Permission";
import { EUserPermissions } from "../../enums/EUserPermissions";
import { Database } from "../Database";
import { IRegisterUser } from "../../interfaces/user/IRegisterUser";
import { Crypto } from "../../types/Crypto";
import { ValueUtils } from "../../utils/ValueUtils";
import { ILoginUser } from "../../interfaces/user/ILoginUser";
import { CryptoUtils } from "../../utils/CryptoUtils";

const USER_SELECT_FIELDS = [
  "id",
  "name",
  "email",
  "birthday",
  "avatar",
  "created_at",
  "updated_at",
];
@Entity()
@Unique(["email", "name"])
export class User implements IUser {
  private repository?: Repository<ObjectLiteral>;

  constructor(data: IUser) {
    if (!data) {
      return;
    }
    this.name = data.name;
    this.email = data.email;
    this.password = data.password;
    this.birthday = data.birthday;
    this.avatar = data.avatar;
    this.created_at = data.created_at;
    this.updated_at = data.updated_at;
    this.is_deleted = data.is_deleted;
    this.permissions = data.permissions ?? this.permissions ?? [];
  }

  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name?: string;

  @Column()
  email?: string;

  @Column()
  password?: string;

  @Column({ nullable: true })
  birthday?: Date;

  @OneToOne(() => File, { nullable: true })
  @JoinColumn()
  avatar?: File;

  @Column()
  created_at!: Date;

  @Column()
  updated_at!: Date;

  @Column()
  is_deleted!: boolean;

  @ManyToMany(() => Permission, (permission) => permission.users)
  @JoinTable({
    name: "user_permissions",
    joinColumn: { name: "user_id", referencedColumnName: "id" },
    inverseJoinColumn: { name: "permission_id", referencedColumnName: "id" },
  })
  permissions!: Permission[];

  public isAdmin() {
    if (!this.permissions?.length) {
      return false;
    }

    for (const p of this.permissions) {
      if (p.id == EUserPermissions.admin) {
        return true;
      }
    }
    return false;
  }

  public async export() {
    return {
      id: this.id,
      name: this.name,
      email: this.email,
      birthday: this.birthday,
      avatar: this.avatar,
      created_at: this.created_at,
      updated_at: this.updated_at,
      permissions: this.permissions,
    };
  }

  public static async get(db: Database, id: number) {
    return db.getRepository(User).findOne({
      where: { id },
      select: USER_SELECT_FIELDS,
      relations: ["permissions"],
    }) as Promise<User>;
  }

  public static async list(db: Database) {
    return db.getRepository(User).find({
      select: USER_SELECT_FIELDS,
      relations: ["permissions"],
    }) as Promise<User[]>;
  }

  public static async create(
    db: Database,
    data: IRegisterUser,
    crypto: Crypto
  ) {
    const repository = db.getRepository(User);
    // Set all data to new user instance
    const user = new User({
      name: data.name,
      email: data.email,
      password: await CryptoUtils.hash(data.password as string, 10, crypto),
      birthday: data.birthday
        ? ValueUtils.getBirthday(data.birthday)
        : undefined,
      avatar: data.avatar,
      permissions: (await Permission.default(db)) ?? [],
      created_at: new Date(),
      updated_at: new Date(),
      is_deleted: false,
    });

    // Save new user
    await repository.save(user);
    return user;
  }

  /**
   * Returns user with specified login data
   */
  public static async login(db: Database, data: ILoginUser) {
    return db
      .getRepository(User)
      .createQueryBuilder("user")
      .where("user.email = :email", { email: data.login })
      .orWhere("user.name = :name", { name: data.login })
      .getOne();
  }

  public async delete(db: Database, repository?: Repository<ObjectLiteral>) {
    this.repository = this.repository ?? repository ?? db.getRepository(User);
    this.is_deleted = true;
    this.update(db);
    return;
  }

  public async update(db: Database, repository?: Repository<ObjectLiteral>) {
    this.repository = this.repository ?? repository ?? db.getRepository(User);

    return this.repository.update(
      { id: this.id },
      {
        name: this.name,
        email: this.email,
        birthday: this.birthday,
        avatar: this.avatar,
        password: this.password,
        is_deleted: this.is_deleted,
      }
    );
  }
}
