import { type Repository } from "typeorm";
import { type Database } from "../Database";
import { FileUsage } from "../models/FileUsage";
import { File } from "../models/File";
import { Package } from "../models/Package";
import { User } from "../models/User";

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
