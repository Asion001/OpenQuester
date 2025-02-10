import { Environment } from "config/Environment";
import { ServerResponse } from "enums/ServerResponse";
import { ServerError } from "error/ServerError";
import { ApiContext } from "services/context/ApiContext";
import { StorageContextBuilder } from "services/context/storage/StorageContextBuilder";
import { MinioStorageService } from "services/storage/MinioStorageService";
import { FileContext } from "types/file/fileContext";
import { StorageServiceModel } from "types/file/StorageServiceModel";
import { StorageProvider } from "types/storage/storage";
import { StorageType } from "types/storage/storageType";
import { TemplateUtils } from "utils/TemplateUtils";

export class StorageServiceFactory {
  private _storage!: StorageServiceModel;
  private _storageMap: Map<StorageProvider, StorageServiceModel> = new Map();

  public createStorageService(
    ctx: ApiContext,
    storageName: StorageProvider
  ): StorageServiceModel {
    storageName =
      storageName ??
      Environment.instance.getEnvVar("STORAGE_NAME", "string", "minio");

    const storage = this._storageMap.get(storageName);
    if (storage) {
      return storage as StorageServiceModel;
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
        return StorageContextBuilder.buildS3Context();
      default:
        throw new ServerError(
          TemplateUtils.text(ServerResponse.UNSUPPORTED_STORAGE_TYPE, {
            type: String(storageType),
          })
        );
    }
  }
}
