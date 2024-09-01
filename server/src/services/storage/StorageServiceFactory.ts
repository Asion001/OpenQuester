import { Environment } from "../../config/Environment";
import { IStorage } from "../../interfaces/file/IStorage";
import { fileContext } from "../../types/file/fileContext";
import { storage } from "../../types/storage/storage";
import { storageType } from "../../types/storage/storageType";
import { MinioStorageService } from "./MinioStorageService";
import { IS3Context } from "../../interfaces/file/IS3Context";
import { StorageContextBuilder } from "../context/storage/StorageContextBuilder";
import { ServerResponse } from "../../enums/ServerResponse";
import { ServerError } from "../../error/ServerError";

export class StorageServiceFactory {
  private static _storage: IStorage;
  private static _storageMap: Map<storage, IStorage> = new Map();

  public static createStorageService(
    storageName: storage,
    fileContext: fileContext
  ): IStorage {
    storageName =
      storageName ??
      Environment.instance.getEnvVar("STORAGE_NAME", "string", "minio");

    const storage = this._storageMap.get(storageName);
    if (storage) {
      return storage as IStorage;
    }

    switch (storageName) {
      case "minio":
        this._storage = new MinioStorageService(fileContext);
        break;
      default:
        throw new ServerError(
          ServerResponse.UNSUPPORTED_STORAGE_NAME.replace("%name", storageName)
        );
    }

    if (this._storage) {
      this._storageMap.set(storageName, this._storage);
      return this._storage;
    }
    throw new ServerError(ServerResponse.STORAGE_SERVICE_INIT_ERROR);
  }

  /** File context and storage service init */
  public static createFileContext(storageType?: storageType) {
    storageType =
      storageType ??
      Environment.instance.getEnvVar("STORAGE_TYPE", "string", "s3");

    switch (storageType) {
      case "s3":
        return StorageContextBuilder.buildS3Context() as IS3Context;
      default:
        throw new ServerError(
          ServerResponse.UNSUPPORTED_STORAGE_TYPE.replace(
            "%type",
            String(storageType)
          )
        );
    }
  }
}
