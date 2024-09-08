import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  Unique,
  ManyToMany,
  JoinTable,
  OneToMany,
} from "typeorm";

import { IUser } from "../../interfaces/user/IUser";
import { File } from "./File";
import { Permission } from "./Permission";
import { EUserPermissions } from "../../enums/EUserPermissions";
import { Package } from "./Package";

@Entity("user")
@Unique(["email", "name"])
export class User implements IUser {
  constructor() {
    //
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

  @OneToMany(() => Package, (packageEntity) => packageEntity.author)
  packages!: Package[];

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

  public async import(data: IUser) {
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
    } as IUser;
  }
}
