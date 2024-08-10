import { MigrationInterface, QueryRunner, TableColumn } from "typeorm";

export class UpdateUserModelFields_1_11_1723107959823
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.addColumn(
      "user",
      new TableColumn({
        name: "created_at",
        type: "timestamp",
        default: "CURRENT_TIMESTAMP",
      })
    );

    await queryRunner.addColumn(
      "user",
      new TableColumn({
        name: "updated_at",
        type: "timestamp",
        default: "CURRENT_TIMESTAMP",
      })
    );

    await queryRunner.addColumn(
      "user",
      new TableColumn({
        name: "is_deleted",
        type: "boolean",
        default: false,
      })
    );

    // Update type of birthday column
    await queryRunner.dropColumn("user", "birthday");
    await queryRunner.addColumn(
      "user",
      new TableColumn({
        name: "birthday",
        type: "timestamp",
        isNullable: true,
      })
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropColumn("user", "created_at");
    await queryRunner.dropColumn("user", "updated_at");
    await queryRunner.dropColumn("user", "is_deleted");
  }
}