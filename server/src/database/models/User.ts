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

import { IUserModel } from "types/user/IUserModel";
import { File } from "database/models/File";
import { Permission } from "database/models/Permission";
import { Package } from "database/models/Package";

@Entity("user")
@Unique(["email", "username", "discord_id"])
export class User implements IUserModel {
  constructor() {
    //
  }

  @PrimaryGeneratedColumn()
  id!: number;

  @Column({ type: "varchar", unique: true, nullable: false })
  username!: string;

  @Column({ type: "varchar", unique: true, nullable: true })
  email?: string | null;

  @Column({ type: "varchar", unique: true, nullable: true })
  discord_id?: string | null;

  @Column({ type: "date", nullable: true })
  birthday?: Date | null;

  @OneToOne(() => File, { nullable: true })
  @JoinColumn({ name: "avatar" })
  avatar?: File | null;

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

  public async import(data: IUserModel) {
    this.username = data.username;
    this.email = data.email;
    this.discord_id = data.discord_id ?? null;
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
      username: this.username,
      email: this.email,
      discord_id: this.discord_id,
      birthday: this.birthday,
      avatar: this.avatar,
      created_at: this.created_at,
      updated_at: this.updated_at,
      permissions: this.permissions,
    } as IUserModel;
  }
}
