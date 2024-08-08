import {
  MigrationInterface,
  QueryRunner,
  Table,
  TableForeignKey,
} from "typeorm";

export class CreateGroupTable_1_2_1723128633623 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    // Create group table
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
            isUnique: true,
          },
        ],
      })
    );

    // Create table to do ManyToMany relationship
    await queryRunner.createTable(
      new Table({
        name: "user_groups",
        columns: [
          {
            name: "userId",
            type: "int",
          },
          {
            name: "groupId",
            type: "int",
          },
        ],
      }),
      true
    );

    // Add foreign keys
    await queryRunner.createForeignKey(
      "user_groups",
      new TableForeignKey({
        name: "FK_userId",
        columnNames: ["userId"],
        referencedColumnNames: ["id"],
        referencedTableName: "user",
        onDelete: "CASCADE", // Delete user record from user_groups
      })
    );

    await queryRunner.createForeignKey(
      "user_groups",
      new TableForeignKey({
        name: "FK_groupId",
        columnNames: ["groupId"],
        referencedColumnNames: ["id"],
        referencedTableName: "group",
        onDelete: "CASCADE", // Delete group record from user_groups
      })
    );

    let sql = `INSERT INTO "group" (name) VALUES ('admins');`;
    sql += `INSERT INTO "group" (name) VALUES ('users');`;
    await queryRunner.query(sql);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    // Drop foreign keys
    await queryRunner.dropForeignKey("user_groups", "FK_userId");
    await queryRunner.dropForeignKey("user_groups", "FK_groupId");

    // Drop `user_groups` table
    await queryRunner.dropTable("user_groups");

    // Drop `groups` table
    await queryRunner.dropTable("group");
  }
}
