import { Entity, PrimaryGeneratedColumn, Column, ManyToMany } from "typeorm";

import { IPermission } from "../../interfaces/IPermission";
import { User } from "./User";
import { Database } from "../Database";
import { EUserPermissions } from "../../enums/EUserPermissions";

@Entity()
export class Permission implements IPermission {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToMany(() => User, (user) => user.permissions)
  users!: User[];

  /**
   * Return default permissions for user
   */
  public static async default(db: Database) {
    return db
      .getRepository(Permission)
      .createQueryBuilder("permission")
      .where("id=:id", { id: EUserPermissions.user })
      .getOne();
  }
}
