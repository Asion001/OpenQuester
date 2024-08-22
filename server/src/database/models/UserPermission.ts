import { Entity, PrimaryColumn } from "typeorm";

@Entity("user_permissions")
export class UserPermissions {
  @PrimaryColumn()
  user_id!: number;

  @PrimaryColumn()
  permission_id!: number;
}
