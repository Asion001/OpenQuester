import { In, Repository } from "typeorm";

import { PackageTag } from "infrastructure/database/models/package/PackageTag";

export class PackageTagRepository {
  constructor(private readonly repository: Repository<PackageTag>) {
    //
  }

  public getTagByName(tag: string) {
    return this.repository.findOne({
      where: { tag },
    });
  }

  public async getTagsByNames(tags: string[]): Promise<PackageTag[]> {
    if (tags.length < 1) {
      return [];
    }
    return this.repository.find({
      where: { tag: In(tags) },
    });
  }
}
