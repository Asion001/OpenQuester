import { type Repository } from "typeorm";

import { Permission } from "infrastructure/database/models/Permission";

export class PermissionRepository {
  constructor(private readonly repository: Repository<Permission>) {
    //
  }
}
