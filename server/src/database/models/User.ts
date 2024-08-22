import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  Unique,
  ManyToMany,
  JoinTable,
} from "typeorm";
import { IUser } from "../../models/user/IUser";
import { File } from "./File";
import { Group } from "./Group";
import { EUserGroups } from "../../enums/EUserGroups";

@Entity()
@Unique(["email", "name"])
export class User implements IUser {
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

  @ManyToMany(() => Group, (group) => group.users)
  @JoinTable({
    name: "user_groups",
    joinColumn: { name: "user_id", referencedColumnName: "id" },
    inverseJoinColumn: { name: "group_id", referencedColumnName: "id" },
  })
  groups!: Group[];

  public isAdmin() {
    if (!this.groups) {
      return false;
    }

    for (const g of this.groups) {
      if (g.id == EUserGroups.admins) {
        return true;
      }
    }
    return false;
  }
}
