import { IStorage } from "../../interfaces/file/IStorage";
import { fileContext } from "../../types/file/fileContext";
import { storage } from "../../types/storage/storage";
import { MinioStorageService } from "./MinioStorageService";

export class StorageServiceFactory {
  private static _storage: IStorage;

  public static createStorageService(
    storageName: storage,
    fileContext: fileContext
  ): IStorage {
    switch (storageName) {
      case "minio":
        this._storage = new MinioStorageService(fileContext);
        break;
      default:
        throw new Error(`Unsupported storage type: ${storageName}`);
    }

    return this._storage;
  }
}
