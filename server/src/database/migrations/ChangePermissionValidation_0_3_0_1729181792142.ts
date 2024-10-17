import { MigrationInterface, QueryRunner, Table } from "typeorm";
import { Logger } from "../../utils/Logger";

export class ChangePermissionValidation_0_3_0_1729181792142
  implements MigrationInterface
{
  name = "ChangePermissionValidation_0_3_0_1729181792142";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropTable("user_permissions");
    await queryRunner.dropTable("permission");

    await queryRunner.createTable(
      new Table({
        name: "permission",
        columns: [
          {
            name: "id",
            type: "int",
            isPrimary: true,
            isGenerated: true,
            generationStrategy: "increment",
          },
          {
            name: "name",
            type: "varchar",
            isNullable: false,
          },
        ],
      })
    );

    await queryRunner.createTable(
      new Table({
        name: "user_permissions",
        columns: [
          {
            name: "user_id",
            type: "int",
            isPrimary: true,
          },
          {
            name: "permission_id",
            type: "int",
            isPrimary: true,
          },
        ],
      })
    );

    let query = `INSERT INTO "permission" (name) VALUES `;
    query += `('get_all_users'), ('get_another_user'), `;
    query += `('change_another_user'), ('delete_another_user');`;

    await queryRunner.query(query);

    Logger.logMigrationComplete("0_3_0");
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropTable("permission");
    await queryRunner.createTable(
      new Table({
        name: "permission",
        columns: [
          {
            name: "id",
            type: "int",
            isPrimary: true,
            isGenerated: true,
            generationStrategy: "increment",
          },
          {
            name: "name",
            type: "varchar",
            isNullable: false,
          },
        ],
      })
    );
    await queryRunner.query(
      `INSERT INTO "permission" (name) VALUES ('admin'), ('user');`
    );
  }
}
