import { Entity, PrimaryGeneratedColumn, Column, ManyToMany } from "typeorm";
import { IGroup } from "../../models/IGroup";
import { User } from "./User";

@Entity()
export class Group implements IGroup {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToMany(() => User, (user) => user.groups)
  users!: User[];
}
