import { Entity, PrimaryGeneratedColumn, Column, ManyToMany } from "typeorm";

import { IPermission } from "../../interfaces/IPermission";
import { User } from "./User";

@Entity()
export class Permission implements IPermission {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToMany(() => User, (user) => user.permissions)
  users!: User[];
}
