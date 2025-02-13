import { type Request, type Response, Router } from "express";

import { type ApiContext } from "application/context/ApiContext";
import { TranslateService as ts } from "application/services/text/TranslateService";
import { type UserService } from "application/services/user/UserService";
import { ClientResponse } from "domain/enums/ClientResponse";
import { HttpStatus } from "domain/enums/HttpStatus";
import { Permissions } from "domain/enums/Permissions";
import { ClientError } from "domain/errors/ClientError";
import { UserDTO } from "domain/types/dto/user/UserDTO";
import { StorageServiceModel } from "domain/types/file/StorageServiceModel";
import { PaginationOrder } from "domain/types/pagination/PaginationOpts";
import { UpdateUserDTO } from "domain/types/user/UpdateUserData";
import { UpdateUserInputDTO } from "domain/types/user/UpdateUserDataInput";
import { File } from "infrastructure/database/models/File";
import { User } from "infrastructure/database/models/User";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { UserRepository } from "infrastructure/database/repositories/UserRepository";
import { ValueUtils } from "infrastructure/utils/ValueUtils";
import { asyncHandler } from "presentation/middleware/asyncHandlerMiddleware";
import {
  checkPermission,
  checkPermissionWithId,
} from "presentation/middleware/permission/PermissionMiddleware";
import { PaginationSchema } from "presentation/schemes/pagination/PaginationSchema";
import { RequestDataValidator } from "presentation/schemes/RequestDataValidator";
import {
  userIdScheme,
  userUpdateScheme,
} from "presentation/schemes/user/userSchemes";

/**
 * Handles all endpoints related for User CRUD
 */
export class UserRestApiController {
  private readonly _userService: UserService;

  constructor(private readonly ctx: ApiContext) {
    const app = this.ctx.app;
    const router = Router();
    const meRouter = Router();

    this._userService = this.ctx.serverServices.user;

    app.use("/v1/me", meRouter);
    app.use("/v1/users", router);

    meRouter.get("/", asyncHandler(this.getUser));

    meRouter.patch("/", asyncHandler(this.updateUser));

    meRouter.get("/", asyncHandler(this.deleteUser));

    router.get(
      "/",
      checkPermission(this.ctx.db, Permissions.GET_ALL_USERS),
      asyncHandler(this.listUsers)
    );

    router.get(
      "/:id",
      checkPermissionWithId(this.ctx.db, Permissions.GET_ANOTHER_USER),
      asyncHandler(this.getUser)
    );

    router.patch(
      "/:id",
      checkPermissionWithId(this.ctx.db, Permissions.CHANGE_ANOTHER_USER),
      asyncHandler(this.updateUser)
    );

    router.delete(
      "/:id",
      checkPermissionWithId(this.ctx.db, Permissions.DELETE_ANOTHER_USER),
      asyncHandler(this.deleteUser)
    );
  }

  private getUser = async (req: Request, res: Response) => {
    const id: number = await this._getUserId(req);

    const validatedData = await new RequestDataValidator<{ userId: number }>(
      { userId: id },
      userIdScheme()
    ).validate();

    let user: UserDTO;

    if (req.user && validatedData.userId === req.user.id) {
      user = await this.mapUserToDTO(
        req.user,
        this.ctx.serverServices.storage.createStorageService(this.ctx, "minio")
      );
    } else {
      user = await this._userService.get(this.ctx, validatedData.userId);
    }

    if (user) {
      return res.status(HttpStatus.OK).send(user);
    }

    return res.status(HttpStatus.NOT_FOUND).send({
      message: ts.localize(ClientResponse.USER_NOT_FOUND, req.headers),
    });
  };

  private updateUser = async (req: Request, res: Response) => {
    const id: number = await this._getUserId(req);

    const userInputDTO = await new RequestDataValidator<UpdateUserInputDTO>(
      { id, ...req.body },
      userUpdateScheme()
    ).validate();

    if (Object.keys(userInputDTO).length < 1) {
      throw new ClientError(ClientResponse.NO_USER_DATA);
    }

    const user = await UserRepository.getRepository(this.ctx.db).get(
      userInputDTO.id,
      { select: ["id"], relations: [] }
    );

    if (!user) {
      throw new ClientError(ClientResponse.USER_NOT_FOUND);
    }

    let avatarFile: File | null = null;

    if (userInputDTO.avatar) {
      const fileRepo = FileRepository.getRepository(this.ctx.db);
      avatarFile = await fileRepo.getFileByFilename(userInputDTO.avatar);

      if (ValueUtils.isBad(avatarFile)) {
        throw new ClientError(ClientResponse.NO_AVATAR);
      }
    }

    const userUpdateDTO: UpdateUserDTO = {
      id,
      email: userInputDTO.email,
      username: userInputDTO.username,
      birthday: userInputDTO.birthday,
    };

    if (avatarFile) {
      userUpdateDTO.avatar = avatarFile;
    }

    const result = await this._userService.update(
      this.ctx,
      user,
      userUpdateDTO
    );

    return res.status(HttpStatus.OK).send(result);
  };

  private deleteUser = async (req: Request, res: Response) => {
    const id: number = await this._getUserId(req);

    const validatedData = await new RequestDataValidator<{ userId: number }>(
      { userId: id },
      userIdScheme()
    ).validate();

    await this._userService.delete(this.ctx, validatedData.userId);

    return res.status(HttpStatus.NO_CONTENT).send();
  };

  private listUsers = async (req: Request, res: Response) => {
    const paginationOpts = await new PaginationSchema<User>({
      data: {
        sortBy: req.query.sortBy as keyof User,
        order: req.query.order as PaginationOrder,
        limit: Number(req.query.limit),
        offset: Number(req.query.offset),
      },
      possibleSortByFields: [
        "id",
        "is_deleted",
        "created_at",
        "username",
        "email",
        "updated_at",
      ],
    }).validate();

    const result = await this._userService.list(this.ctx, paginationOpts);

    if (result) {
      return res.status(HttpStatus.OK).send(result);
    }

    return res.status(HttpStatus.NOT_FOUND).send({
      message: ts.localize(ClientResponse.USER_NOT_FOUND, req.headers),
    });
  };

  // TODO: Remove when global service locator implemented - move to authMiddleware
  private async mapUserToDTO(
    user: User,
    storageService: StorageServiceModel
  ): Promise<UserDTO> {
    const avatarLink = user.avatar
      ? await storageService.get(user.avatar.filename)
      : null;

    return {
      id: user.id,
      username: user.username,
      email: user.email,
      birthday: user.birthday,
      discordId: user.discord_id,
      avatar: avatarLink,
      permissions: user.permissions,
      createdAt: user.created_at,
      updatedAt: user.updated_at,
      isDeleted: user.is_deleted,
    };
  }

  private async _getUserId(req: Request) {
    if (req.params && req.params.id) {
      return Number(req.params.id);
    } else {
      const id = req.session.userId;
      if (!id) {
        throw new ClientError(
          ClientResponse.USER_NOT_FOUND,
          HttpStatus.NOT_FOUND
        );
      }
      return id;
    }
  }
}
