import { type Repository } from "typeorm";
import { type Database } from "database/Database";
import { FileUsage } from "database/models/FileUsage";
import { File } from "database/models/File";
import { Package } from "database/models/Package";
import { User } from "database/models/User";

export class FileUsageRepository {
  private static _instance: FileUsageRepository;
  private _repository: Repository<FileUsage>;

  private constructor(db: Database) {
    this._repository = db.getRepository(FileUsage);
  }

  public static getRepository(db: Database) {
    if (!this._instance) {
      this._instance = new FileUsageRepository(db);
    }

    return this._instance;
  }

  public async getUsage(file: File) {
    return this._repository.find({
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

    return this._repository.save(usage);
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

    return this._repository.insert(fileUsages);
  }

  public async deleteUsage(file: File, user?: User, pack?: Package) {
    const opts: { [key: string]: any } = { file: { id: file.id } };

    if (user?.id) {
      opts.user = { id: user.id };
    }

    if (pack?.id) {
      opts.package = { id: pack.id };
    }

    return this._repository.delete(opts);
  }
}
