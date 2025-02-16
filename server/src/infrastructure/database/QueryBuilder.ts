import {
  FindOptionsWhere,
  ObjectLiteral,
  Repository,
  SelectQueryBuilder,
} from "typeorm";

import { RelationSelects, SelectOptions } from "domain/types/SelectOptions";

export class QueryBuilder {
  /**
   * Builds a TypeORM query that applies a where condition, selects only the specified main fields,
   * and for each relation either selects only specific columns or joins all columns.
   *
   * @param repository - The TypeORM repository for the entity.
   * @param where - Conditions to apply in the WHERE clause.
   * @param selectOptions - Options controlling which columns and relations are selected.
   * @returns A query builder configured with the requested selections.
   */
  public static async buildFindQuery<T extends ObjectLiteral>(
    repository: Repository<T>,
    where: FindOptionsWhere<T>,
    selectOptions: SelectOptions<T>
  ): Promise<SelectQueryBuilder<T>> {
    const alias = repository.metadata.name.toLowerCase();
    let qb = repository.createQueryBuilder(alias);

    Object.keys(where).forEach((key) => {
      const paramKey = `where_${key}`;

      qb.andWhere(`${alias}.${key} = :${paramKey}`, {
        [paramKey]: where[key as keyof T],
      });
    });

    // Select fields
    const select = selectOptions.select;
    qb.select(select.map((field) => `${alias}.${field.toString()}`));

    // Select relations
    qb = await this.buildRelationsSelect(
      qb,
      selectOptions.relations,
      selectOptions.relationSelects
    );

    return qb;
  }

  /**
   * Helper method that helps to build selections for relations with provided
   * query builder instance, relations and relationSelects (which fields select
   * from which relation)
   * @param qb TypeORM query builder instance
   * @param relations Array of field names
   * @param relationSelects Relations selects, example:
   *
   * ```
   * { ..., relationSelects: { avatar: ["id", "filename"] }}
   * ````
   *
   * @returns query builder with applied select and joins options
   */
  public static async buildRelationsSelect<T extends ObjectLiteral>(
    qb: SelectQueryBuilder<T>,
    relations: Array<keyof T>,
    relationSelects?: RelationSelects<T>
  ) {
    const alias = qb.alias;

    for (const relation of relations) {
      const relationAlias = relation.toString();

      if (relationSelects?.[relation]) {
        const relationFields = relationSelects[relation];
        relationFields.forEach((field) => {
          qb.addSelect(`${relationAlias}.${field.toString()}`);
        });
        qb.leftJoin(`${alias}.${relation.toString()}`, relationAlias);
      } else {
        // Select all relation fields by default
        qb.leftJoinAndSelect(`${alias}.${relation.toString()}`, relationAlias);
      }
    }

    return qb;
  }
}
