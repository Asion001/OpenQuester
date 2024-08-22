import sinon from "sinon";
import { Repository } from "typeorm";
import { User } from "../../../../src/database/models/User";
import { expect } from "chai";
import { UserService } from "../../../../src/services/UserService";

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
      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });
      const stubFindOne = sinon.stub(userRepository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["groups"],
        })
        .returns({
          email: "someEmail",
          name: "success",
          password: "somePassword",
          created_at: new Date(),
          updated_at: new Date(),
          is_banned: false,
          isAdmin: () => false,
        });

      const result = await UserService.getByToken(ctx, {} as any);
      expect(result.name).to.be.equal("success");
      stubPayload.restore();
      stubFindOne.restore();
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
      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });
      const stubFindOne = sinon.stub(userRepository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["groups"],
        })
        .returns({
          name: "success",
          isAdmin: () => false,
        });

      const result = await UserService.retrieve(ctx, req);
      expect(result.name).to.be.equal("success");
      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should throw error on bad id", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: "bad id",
        },
      };
      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });
      const stubFindOne = sinon.stub(userRepository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["groups"],
        })
        .returns({
          name: "success",
          isAdmin: () => false,
        });

      try {
        await UserService.retrieve(ctx, req);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include(
          "specify id that greater than 1"
        );
      }
      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should throw error if asking for another user", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: 1,
        },
      };
      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });
      const stubFindOne = sinon.stub(userRepository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["groups"],
        })
        .returns({
          name: "fail",
          groups: [],
          isAdmin: () => false,
        });

      try {
        await UserService.retrieve(ctx, req);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).include("not able");
      }
      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should retrieve user if admin asking for another user", async () => {
      let req: any;
      // Retrieve info about ourselves
      req = {
        params: {
          id: 1,
        },
      };
      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });
      const stubFindOne = sinon.stub(userRepository, "findOne");

      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["groups"],
        })
        .returns({
          name: "admin",
          groups: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["groups"],
        })
        .returns({
          name: "success",
          isAdmin: () => false,
        });

      const result = await UserService.retrieve(ctx, req);
      expect(result.name).to.be.equal("success");
      stubPayload.restore();
      stubFindOne.restore();
    });
  });
});
