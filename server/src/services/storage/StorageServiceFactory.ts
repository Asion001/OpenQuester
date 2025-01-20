import { Environment } from "config/Environment";
import { IStorage } from "interfaces/file/IStorage";
import { Storage } from "types/storage/storage";
import { StorageType } from "types/storage/storageType";
import { IS3Context } from "interfaces/file/IS3Context";
import { ServerResponse } from "enums/ServerResponse";
import { ServerError } from "error/ServerError";
import { FileContext } from "types/file/fileContext";
import { TemplateUtils } from "utils/TemplateUtils";
import { StorageContextBuilder } from "services/context/storage/StorageContextBuilder";
import { ApiContext } from "services/context/ApiContext";
import { MinioStorageService } from "services/storage/MinioStorageService";

export class StorageServiceFactory {
  private _storage!: IStorage;
  private _storageMap: Map<Storage, IStorage> = new Map();

  public createStorageService(ctx: ApiContext, storageName: Storage): IStorage {
    storageName =
      storageName ??
      Environment.instance.getEnvVar("STORAGE_NAME", "string", "minio");

    const storage = this._storageMap.get(storageName);
    if (storage) {
      return storage as IStorage;
    }

    switch (storageName) {
      case "minio":
        this._storage = new MinioStorageService(ctx);
        break;
      default:
        throw new ServerError(
          TemplateUtils.text(ServerResponse.UNSUPPORTED_STORAGE_NAME, {
            name: storageName,
          })
        );
    }

    if (this._storage) {
      this._storageMap.set(storageName, this._storage);
      return this._storage;
    }
    throw new ServerError(ServerResponse.STORAGE_SERVICE_INIT_ERROR);
  }

  /** File context and storage service init */
  public createFileContext(storageType?: StorageType): FileContext {
    storageType =
      storageType ??
      Environment.instance.getEnvVar("STORAGE_TYPE", "string", "s3");

    switch (storageType) {
      case "s3":
        return StorageContextBuilder.buildS3Context() as IS3Context;
      default:
        throw new ServerError(
          TemplateUtils.text(ServerResponse.UNSUPPORTED_STORAGE_TYPE, {
            type: String(storageType),
          })
        );
    }
  }
}
