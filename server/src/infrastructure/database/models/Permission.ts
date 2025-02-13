import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from "typeorm";

import { Permissions } from "domain/enums/Permissions";
import { PermissionModel } from "domain/types/permission/PermissionModel";
import { User } from "infrastructure/database/models/User";

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
