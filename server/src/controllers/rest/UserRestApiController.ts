import { type Request, type Response, Router } from "express";

import { type ApiContext } from "services/context/ApiContext";
import { type UserService } from "services/UserService";
import { ClientResponse } from "enums/ClientResponse";
import { HttpStatus } from "enums/HttpStatus";
import { checkPermissionWithId } from "middleware/permission/PermissionMiddleware";
import { checkPermission } from "middleware/permission/PermissionMiddleware";
import { Permissions } from "enums/Permissions";
import { TranslateService as ts } from "services/text/TranslateService";
import { validateTokenForAuth } from "middleware/authMiddleware";
import { PaginationSchema } from "schemes/pagination/PaginationSchema";
import { User } from "database/models/User";
import { File } from "database/models/File";
import { EPaginationOrder } from "types/pagination/IPaginationOpts";
import { asyncHandler } from "middleware/asyncHandlerMiddleware";
import { RequestDataValidator } from "schemes/RequestDataValidator";
import { IRegisterUser } from "types/user/IRegisterUser";
import {
  userIdScheme,
  userRegisterScheme,
  userUpdateScheme,
} from "schemes/user/userSchemes";
import { UserRepository } from "database/repositories/UserRepository";
import { ClientError } from "error/ClientError";
import { IUpdateUserDataInput } from "types/user/IUpdateUserDataInput";
import { FileRepository } from "database/repositories/FileRepository";
import { ValueUtils } from "utils/ValueUtils";
import { IRegisterUserInput } from "types/user/IRegisterUserInput";

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

    router.post("/", validateTokenForAuth, asyncHandler(this.register));

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

  private register = async (req: Request, res: Response) => {
    const validatedData = await new RequestDataValidator<IRegisterUserInput>(
      req.body,
      userRegisterScheme()
    ).validate();

    let avatarFile: File | null = null;

    if (Object.keys(validatedData).length < 1) {
      throw new ClientError(ClientResponse.NO_USER_DATA);
    }

    if (validatedData.avatar) {
      const fileRepo = FileRepository.getRepository(this.ctx.db);
      avatarFile = await fileRepo.getFileByFilename(validatedData.avatar);
    }

    if (ValueUtils.isBad(avatarFile)) {
      throw new ClientError(ClientResponse.NO_AVATAR);
    }

    const registerData: IRegisterUser = {
      ...validatedData,
      avatar: avatarFile,
    };

    const result = await this._userService.register(this.ctx, registerData);
    return res.status(HttpStatus.CREATED).send(result);
  };

  private getUser = async (req: Request, res: Response) => {
    const id: number = await this._getUserId(req);

    const validatedData = await new RequestDataValidator<{ userId: number }>(
      { userId: id },
      userIdScheme()
    ).validate();

    const result = await this._userService.get(this.ctx, validatedData.userId);

    if (result) {
      return res.status(HttpStatus.OK).send(result);
    }

    return res.status(HttpStatus.NOT_FOUND).send({
      message: ts.localize(ClientResponse.USER_NOT_FOUND, req.headers),
    });
  };

  private updateUser = async (req: Request, res: Response) => {
    const id: number = await this._getUserId(req);

    const validatedData = await new RequestDataValidator<IUpdateUserDataInput>(
      { id, ...req.body },
      userUpdateScheme()
    ).validate();

    if (Object.keys(validatedData).length < 1) {
      throw new ClientError(ClientResponse.NO_USER_DATA);
    }

    let avatarFile: File | null = null;

    if (validatedData.avatar) {
      const fileRepo = FileRepository.getRepository(this.ctx.db);
      avatarFile = await fileRepo.getFileByFilename(validatedData.avatar);
    }

    if (ValueUtils.isBad(avatarFile)) {
      throw new ClientError(ClientResponse.NO_AVATAR);
    }

    const result = await this._userService.update(this.ctx, {
      ...validatedData,
      avatar: avatarFile,
    });

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
        order: req.query.order as EPaginationOrder,
        limit: Number(req.query.limit),
        offset: Number(req.query.offset),
      },
      possibleSortByFields: [
        "id",
        "is_deleted",
        "created_at",
        "name",
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
    if (req.params.id) {
      return Number(req.params.id);
    } else {
      const user = await UserRepository.getUserByHeader(
        this.ctx.db,
        req.headers.authorization,
        { select: ["id"] }
      );
      return user.id;
    }
  }
}
