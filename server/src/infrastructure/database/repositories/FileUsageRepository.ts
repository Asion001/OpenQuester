import { type Repository } from "typeorm";

import { type File } from "infrastructure/database/models/File";
import { FileUsage } from "infrastructure/database/models/FileUsage";
import { type Package } from "infrastructure/database/models/package/Package";
import { type User } from "infrastructure/database/models/User";

export class FileUsageRepository {
  constructor(private readonly repository: Repository<FileUsage>) {
    //
  }

  public async getUsage(file: File) {
    return this.repository.find({
      where: { file: { id: file.id } },
      relations: ["file", "user", "user.avatar", "package", "package.author"],
    });
  }

  public async writeUsage(file: File, user?: User, pack?: Package) {
    const usage = new FileUsage();
    usage.import({
      file,
      user,
      package: pack,
    });

    return this.repository.save(usage);
  }

  public async writeBulkUsage(filesData: {
    files: File[];
    user?: User;
    pack?: Package;
  }) {
    const fileUsages = filesData.files.map((f) => {
      const usage = new FileUsage();
      usage.import({
        file: f,
        package: filesData.pack,
        user: filesData.user,
      });
      return usage;
    });

    return this.repository.insert(fileUsages);
  }

  public async deleteUsage(file: File, user?: User, pack?: Package) {
    const opts: { [key: string]: any } = { file: { id: file.id } };

    if (user?.id) {
      opts.user = { id: user.id };
    }

    if (pack?.id) {
      opts.package = { id: pack.id };
    }

    return this.repository.delete(opts);
  }
}
