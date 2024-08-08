import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
import { IGroup } from "../../models/IGroup";

@Entity()
export class Group implements IGroup {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;
}
