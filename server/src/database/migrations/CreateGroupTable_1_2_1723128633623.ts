import {
  MigrationInterface,
  QueryRunner,
  Table,
  TableForeignKey,
  TableUnique,
} from "typeorm";

export class CreateGroupTable_1_2_1723128633623 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.createTable(
      new Table({
        name: "group",
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
        name: "user_groups",
        columns: [
          {
            name: "user_id",
            type: "int",
            isPrimary: true,
          },
          {
            name: "group_id",
            type: "int",
            isPrimary: true,
          },
        ],
      })
    );

    await queryRunner.createUniqueConstraint(
      "user_groups",
      new TableUnique({
        columnNames: ["user_id", "group_id"],
      })
    );

    await queryRunner.createForeignKey(
      "user_groups",
      new TableForeignKey({
        columnNames: ["user_id"],
        referencedTableName: "user",
        referencedColumnNames: ["id"],
        onDelete: "CASCADE",
      })
    );

    await queryRunner.createForeignKey(
      "user_groups",
      new TableForeignKey({
        columnNames: ["group_id"],
        referencedTableName: "group",
        referencedColumnNames: ["id"],
        onDelete: "CASCADE",
      })
    );

    await queryRunner.query(
      `INSERT INTO "group" (name) VALUES ('admins'), ('users');`
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    // Remove foreign keys
    const table = await queryRunner.getTable("user_groups");
    const foreignKey1 = table?.foreignKeys.find(
      (fk) => fk.columnNames.indexOf("user_id") !== -1
    );
    const foreignKey2 = table?.foreignKeys.find(
      (fk) => fk.columnNames.indexOf("group_id") !== -1
    );

    if (foreignKey1) {
      await queryRunner.dropForeignKey("user_groups", foreignKey1);
    }

    if (foreignKey2) {
      await queryRunner.dropForeignKey("user_groups", foreignKey2);
    }

    // Drop tables
    await queryRunner.dropTable("user_groups");
    await queryRunner.dropTable("group");
  }
}
