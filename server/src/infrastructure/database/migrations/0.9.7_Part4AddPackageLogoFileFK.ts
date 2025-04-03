import { MigrationInterface, QueryRunner, TableForeignKey } from "typeorm";

import { Logger } from "infrastructure/utils/Logger";

export class AddPackageLogoFileForeignKey_1743338225856
  implements MigrationInterface
{
  name = "AddPackageLogoFileForeignKey_1743338225856";

  private readonly fk = new TableForeignKey({
    columnNames: ["logo_file"],
    referencedTableName: "file",
    referencedColumnNames: ["id"],
    onDelete: "CASCADE",
  });

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.createForeignKey("package", this.fk);

    Logger.logMigrationComplete("0.9.7-4");
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    // Remove the foreign key
    await queryRunner.dropForeignKey("package", this.fk);
  }
}
