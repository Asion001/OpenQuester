import { Entity, PrimaryColumn } from "typeorm";

@Entity("user_groups")
export class UserGroups {
  @PrimaryColumn()
  user_id!: number;

  @PrimaryColumn()
  group_id!: number;
}
