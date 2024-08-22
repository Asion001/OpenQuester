import sinon from "sinon";
import { Repository } from "typeorm";
import { User } from "../../../../src/database/models/User";
import { expect } from "chai";
import { UserService } from "../../../../src/services/UserService";
import { JWTUtils } from "../../../../src/utils/JWTUtils";

describe("User retrieve by id and JWT token", () => {
  let userRepository: sinon.SinonStubbedInstance<any>;
  let db: any;
  let ctx: any;

  beforeEach(async () => {
    db = {
      getRepository: () => userRepository,
    };
    ctx = {
      db: db,
    };
    userRepository = {
      findOne: () => null,
    } as unknown as Repository<User>;
  });

  describe("Retrieve user by token", () => {
    it("Should retrieve user by token", async () => {
      const stubPayload = sinon.stub(JWTUtils, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });
      const stubUser = sinon.stub(User, "get");
      stubUser.resolves({
        email: "someEmail",
        name: "success",
        password: "somePassword",
        created_at: new Date(),
        updated_at: new Date(),
        is_deleted: false,
        isAdmin: () => false,
      } as unknown as User);

      const result = await UserService.getByToken(ctx, {} as any);
      expect(result.name).to.be.equal("success");
      stubPayload.restore();
      stubUser.restore();
    });
  });

  describe("Retrieve user by id", () => {
    it("Should retrieve user by id if he asks for his own info", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: 1,
        },
      };
      const stubPayload = sinon.stub(JWTUtils, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });
      const stubUser = sinon.stub(User, "get");
      stubUser.resolves({
        name: "success",
        isAdmin: () => false,
      } as unknown as User);

      const result = await UserService.get(ctx, req);
      expect(result.name).to.be.equal("success");
      stubPayload.restore();
      stubUser.restore();
    });

    it("Should throw error on bad id", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: "bad id",
        },
      };
      const stubPayload = sinon.stub(JWTUtils, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });
      const stubUser = sinon.stub(User, "get");
      stubUser.resolves({
        name: "success",
        isAdmin: () => false,
      } as unknown as User);

      try {
        await UserService.get(ctx, req);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include(
          "specify id that greater than 1"
        );
      }
      stubPayload.restore();
      stubUser.restore();
    });

    it("Should throw error if asking for another user", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: 1,
        },
      };
      const stubPayload = sinon.stub(JWTUtils, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });
      const stubUser = sinon.stub(User, "get");
      stubUser.resolves({
        name: "fail",
        isAdmin: () => false,
      } as unknown as User);

      try {
        await UserService.get(ctx, req);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).include("not able");
      }
      stubPayload.restore();
      stubUser.restore();
    });

    it("Should retrieve user if admin asking for another user", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: 1,
        },
      };
      const stubPayload = sinon.stub(JWTUtils, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });
      const stubUser = sinon.stub(User, "get");
      stubUser.withArgs(ctx.db, 2).resolves({
        name: "admin",
        isAdmin: () => true,
        permissions: [{ id: 1, name: "admin" }],
      } as unknown as User);

      stubUser.withArgs(ctx.db, 1).resolves({
        name: "success",
        isAdmin: () => false,
      } as unknown as User);

      const result = await UserService.get(ctx, req);
      expect(result.name).to.be.equal("success");
      stubPayload.restore();
      stubUser.restore();
    });
  });
});
