import { In, Repository } from "typeorm";
import { Package } from "database/models/Package";
import { Database } from "database/Database";
import { OQContentStructure } from "types/file/structures/OQContentStructure";
import { ClientError } from "error/ClientError";
import { ClientResponse } from "enums/ClientResponse";
import { User } from "database/models/User";
import { IPaginationOpts } from "types/pagination/IPaginationOpts";
import { IPackage } from "types/package/IPackage";
import { ISelectOptions } from "types/ISelectOptions";
import { IPaginatedResult } from "types/pagination/IPaginatedResult";
import { PaginatedResults } from "database/pagination/PaginatedResults";

const PACKAGE_SELECT_FIELDS = [
  "id",
  "title",
  "created_at",
  "content",
  "author.id",
  "author.username",
];

export class PackageRepository {
  private static _instance: PackageRepository;
  private _repository: Repository<Package>;

  private constructor(db: Database) {
    this._repository = db.getRepository(Package);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new PackageRepository(db);
    }

    return this._instance;
  }

  public async get(id: number) {
    const alias = this._repository.metadata.name.toLowerCase();

    const selectFields = PACKAGE_SELECT_FIELDS.map((field) => {
      if (field.includes(".")) return field;
      return `${alias}.${field}`;
    });

    return this._repository
      .createQueryBuilder(alias)
      .where(`${alias}.id = :packId`, { packId: id })
      .leftJoinAndSelect(`${alias}.author`, "author")
      .select(selectFields)
      .getOne();
  }

  public async list(
    paginationOpts: IPaginationOpts<IPackage>,
    selectOptions?: ISelectOptions<IPackage>
  ): Promise<IPaginatedResult<IPackage[]>> {
    const alias = this._repository.metadata.name.toLowerCase();

    const selectFields = selectOptions?.select ?? PACKAGE_SELECT_FIELDS;

    // Split into main entity fields and relation fields
    const mainFields: string[] = [];
    const relationFields: string[] = [];

    for (const field of selectFields) {
      if (field.includes(".")) {
        relationFields.push(field);
      } else {
        mainFields.push(field);
      }
    }

    const qb = this._repository.createQueryBuilder(alias);

    // Select main entity fields
    qb.select(mainFields.map((field) => `${alias}.${field}`));

    if (selectOptions?.relations) {
      for (const relation of selectOptions.relations) {
        const relationAlias = relation;
        // Join the relation without selecting all fields
        qb.leftJoin(`${alias}.${relation}`, relationAlias);

        // Extract fields for this relation from relationFields
        const relationSelects = relationFields
          .filter((field) => field.startsWith(`${relationAlias}.`))
          .map((field) => {
            const [, column] = field.split(".");
            return `${relationAlias}.${column}`;
          });

        if (relationSelects.length > 0) {
          qb.addSelect(relationSelects);
        }
      }
    }

    return PaginatedResults.paginateEntityAndSelect<IPackage>(
      qb,
      paginationOpts
    );
  }

  public findByIds(
    ids: number[],
    selectOptions?: ISelectOptions<Package>
  ): Promise<Package[]> {
    return this._repository.find({
      where: { id: In(ids) },
      relations: selectOptions?.relations ?? ["author"],
    });
  }

  public async create(content: OQContentStructure, author: User) {
    const pack = new Package();
    pack.import({
      content,
      author: author,
      title: content.metadata?.title,
      created_at: new Date(),
    });

    if (!pack.content) {
      throw new ClientError(ClientResponse.CANNOT_SAVE_CONTENT);
    }

    return this._repository.save(pack);
  }
}
