import { type Request, type Response, Router } from "express";

import { File } from "database/models/File";
import { User } from "database/models/User";
import { FileRepository } from "database/repositories/FileRepository";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { Permissions } from "enums/Permissions";
import { ClientError } from "error/ClientError";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";
import {
  checkPermission,
  checkPermissionWithId,
} from "middleware/permission/PermissionMiddleware";
import { PaginationSchema } from "schemes/pagination/PaginationSchema";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import { userIdScheme, userUpdateScheme } from "schemes/user/userSchemes";
import { type ApiContext } from "services/context/ApiContext";
import { TranslateService as ts } from "services/text/TranslateService";
import { type UserService } from "services/UserService";
import { PaginationOrder } from "types/pagination/PaginationOpts";
import { UpdateUserDTO } from "types/user/UpdateUserData";
import { UpdateUserInputDTO } from "types/user/UpdateUserDataInput";
import { ValueUtils } from "utils/ValueUtils";

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

    const user = await this._userService.get(this.ctx, validatedData.userId);

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

    const result = await this._userService.update(this.ctx, userUpdateDTO);

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
