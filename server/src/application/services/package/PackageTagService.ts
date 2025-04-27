import { PackageTag } from "infrastructure/database/models/package/PackageTag";
import { PackageTagRepository } from "infrastructure/database/repositories/PackageTagRepository";

export class PackageTagService {
  constructor(private readonly packageTagRepository: PackageTagRepository) {
    //
  }

  public getTagByName(tag: string) {
    return this.packageTagRepository.getTagByName(tag);
  }

  public async getTagsByNames(tags: string[]): Promise<PackageTag[]> {
    return this.packageTagRepository.getTagsByNames(tags);
  }
}
