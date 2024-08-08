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
import { IUser } from "../../models/IUser";
import { File } from "./File";
import { Group } from "./Group";

@Entity()
@Unique(["email"])
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

  @ManyToMany(() => Group, (group) => group.name)
  @JoinTable()
  groups!: Group[];
}
