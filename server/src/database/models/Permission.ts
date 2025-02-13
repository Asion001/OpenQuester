import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from "typeorm";

import { User } from "database/models/User";
import { Permissions } from "enums/Permissions";
import { PermissionModel } from "types/permission/PermissionModel";

@Entity("permission")
export class Permission implements PermissionModel {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToMany(() => User, (user) => user.permissions)
  users!: User[];

  public static async checkPermission(user: User, permission: Permissions) {
    if (!user.permissions || user.permissions.length === 0) {
      return false;
    }

    const userPermissions = user.permissions.map((v) => v.name);
    if (!userPermissions.includes(permission)) {
      return false;
    }
    return true;
  }
}
