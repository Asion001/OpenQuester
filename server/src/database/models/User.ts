import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToOne,
  JoinColumn,
  Unique,
} from "typeorm";
import { IUser } from "../../models/IUser";
import { File } from "./File";

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
  birthday?: number;

  @OneToOne(() => File, { nullable: true })
  @JoinColumn()
  avatar?: File;
}
