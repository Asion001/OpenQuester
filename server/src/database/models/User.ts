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

@Entity()
@Unique(["email", "name"])
export class User implements IUser {
  private repository?: Repository<ObjectLiteral>;

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

  @Column()
  created_at!: Date;

  @Column()
  updated_at!: Date;

  @Column()
  is_deleted!: boolean;

  @OneToOne(() => File, { nullable: true })
  @JoinColumn()
  avatar?: File;

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
    const repository = db.getRepository(User);
    const user = (await repository.findOne({
      where: { id: id },
      relations: ["permissions"],
    })) as User;

    if (user) {
      // Don't send back user password
      delete user.password;
    }

    return user;
  }

  public static async list(db: Database) {
    const repository = db.getRepository(User);
    const users = await repository.find({
      relations: ["permissions"],
    });
    // Don't send users passwords
    users.map((u) => delete u.password);
    return users;
  }

  public static async create(
    db: Database,
    data: IRegisterUser,
    crypto: Crypto
  ) {
    const repository = db.getRepository(User);
    const user = new User();

    // Set all data to new user instance
    user.name = data.name;
    user.email = data.email;
    user.password = await CryptoUtils.hash(data.password as string, 10, crypto);

    user.birthday = data.birthday
      ? ValueUtils.getBirthday(data.birthday)
      : undefined;
    user.avatar = data.avatar;

    user.permissions = await Permission.default(db);
    user.created_at = new Date();
    user.updated_at = new Date();

    // Save new user
    await repository.save(user);
    return user;
  }

  /**
   * Returns user with specified login data
   */
  public static async login(db: Database, data: ILoginUser) {
    const repository = db.getRepository(User);

    const user = await repository
      .createQueryBuilder("user")
      .where("user.email = :email", { email: data.login })
      .orWhere("user.name = :name", { name: data.login })
      .getOne();

    return user;
  }

  public async delete(db: Database) {
    if (!this.repository) {
      this.repository = db.getRepository(User);
    }
    this.is_deleted = true;
    await this.save(db);
    return;
  }

  public async save(db: Database) {
    if (!this.repository) {
      this.repository = db.getRepository(User);
    }
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
