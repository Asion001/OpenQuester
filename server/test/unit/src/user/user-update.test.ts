import sinon from "sinon";
import { Repository } from "typeorm";
import { User } from "../../../../src/database/models/User";
import { UserService } from "../../../../src/services/UserService";
import * as bcrypt from "bcryptjs";
import { expect } from "chai";
import { instance, mock, when, verify } from "ts-mockito";
import { JWTUtils } from "../../../../src/utils/JWTUtils";
import { UpdateUser } from "../../../../src/managers/user/UpdateUser";
import { ClientResponse } from "../../../../src/enums/ClientResponse";

const bcryptMock = mock<typeof bcrypt>();

// Stub bcrypt.hash to return a resolved promise
when(bcryptMock.compare("somePassword", "somePassword")).thenResolve(true);
when(bcryptMock.compare("wrongPassword", "somePassword")).thenResolve(false);
when(bcryptMock.compare("newPassword", "somePassword")).thenResolve(false);

// Use the mock instance in your tests
const bcryptInstance = instance(bcryptMock);

describe("User update", () => {
  let repository: sinon.SinonStubbedInstance<any>;
  let stubFindOne:
    | sinon.SinonStub<any[], any>
    | sinon.SinonStub<unknown[], unknown>;
  let db: any;
  let ctx: any;

  beforeEach(async () => {
    db = {
      getRepository: () => repository,
      ds: {
        transaction: async () => true,
      },
    };
    ctx = {
      db: db,
      crypto: bcryptInstance,
    };

    // Implement methods of user and permissions repositories
    repository = {
      findOne: () => null,
      update: () => null,
      exists: () => true,
    } as unknown as Repository<User>;
    stubFindOne = sinon.stub(repository, "findOne");
  });

  afterEach(async () => {
    stubFindOne.restore();
  });

  describe("User update", () => {
    // TODO: Currently we have no required fields
    it.skip("Should throw error with empty data", async () => {
      const dataToUpdate = {};

      const req = {
        body: dataToUpdate,
      };

      try {
        const data = new UpdateUser(req.body);
        data.validate();
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("is required");
      }
    });

    it("Should update user with provided data", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        birthday: new Date(),
      };
      const payload = {
        iat: 1111,
        exp: 2222,
        id: 1,
      };

      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "success",
          password: "somePassword",
          updated_at: new Date(),
          is_deleted: false,
          isAdmin: () => false,
          update: () => true,
          export: () => dataToUpdate,
        });

      const result = await UserService.update(
        ctx.db,
        ctx.crypto,
        payload,
        dataToUpdate,
        1
      );

      expect(result.name).to.be.equal("updatedName");
      expect(result.email).to.be.equal("updatedEmail@gmail.com");
      expect(result.birthday).to.be.not.equal(undefined);
      expect(result.birthday).to.be.not.equal(null);
    });

    // TODO: For now no need password to update user
    it.skip("Should throw error with empty or bad password", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 1,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          password: "somePassword",
          updated_at: new Date(),
          isAdmin: () => false,
        });

      try {
        // await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("password is incorrect");
      }

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "WrongPassword",
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      try {
        // await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("password is incorrect");
      }

      // stubPayload.restore();
      stubFindOne.restore();
    });

    // TODO: Currently not implemented
    it.skip("Should update another user if user is admin", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      const req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 2,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["permissions"],
        })
        .returns({
          name: "admin",
          permissions: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          password: "somePassword",
          updated_at: new Date(),
          permissions: [{ id: 2, name: "users" }],
          isAdmin: () => false,
        });

      // const result = await UserService.update(ctx, req as any);
      // expect(result.name).to.be.equal("updatedName");
      // expect(result.email).to.be.equal("updatedEmail@gmail.com");
      // stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should throw error if user is not admin", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      const payload = {
        iat: 1111,
        exp: 2222,
        id: 2,
      };

      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["permissions"],
        })
        .returns({
          name: "notAdmin",
          permissions: [{ id: 2, name: "users" }],
          isAdmin: () => false,
        });

      try {
        await UserService.update(ctx.db, ctx.crypto, payload, dataToUpdate, 1);
      } catch (err: any) {
        expect(err.message).to.be.equal(ClientResponse.ACCESS_DENIED);
      }
    });

    // TODO: Allowing admins to change another users not implemented, so asking user will always exist
    it.skip("Should not found user", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      const req = {
        body: dataToUpdate,
        params: { id: 777 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 1,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "admin",
          permissions: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      stubFindOne
        .withArgs({
          where: { id: 777 },
          relations: ["permissions"],
        })
        .returns(undefined);

      try {
        // await UserService.update(ctx, req as any);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("not found");
      }
      // stubPayload.restore();
      stubFindOne.restore();
    });

    // TODO: Currently not implemented
    it.skip("Should update new password", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        newPassword: "newPassword",
        password: "somePassword",
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 1,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          email: "email@gmail.com",
          password: "somePassword",
          updated_at: new Date(),
          isAdmin: () => false,
        });

      // await UserService.update(ctx, req as any);
      verify(bcryptMock.hash("newPassword", 10)).called();

      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          email: "email@gmail.com",
          password: "somePassword",
          updated_at: new Date(),
          isAdmin: () => false,
        });

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        newPassword: "somePassword",
        password: "somePassword",
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // await UserService.update(ctx, req as any);
      verify(bcryptMock.hash("newPassword", 10)).once();

      // stubPayload.restore();
      stubFindOne.restore();
    });

    // TODO: Currently not implemented
    it.skip("Default user should not update permissions", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        permissions: [
          {
            id: 1,
            name: "admins",
          },
          {
            id: 2,
            name: "users",
          },
        ],
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 1,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          email: "email@gmail.com",
          password: "somePassword",
          updated_at: new Date(),
          isAdmin: () => false,
        });

      try {
        // await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include(
          "only admins allowed to change user permissions"
        );
      }

      // stubPayload.restore();
      stubFindOne.restore();
    });

    // TODO: Currently not implemented
    it.skip("Should update permissions", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        permissions: [
          {
            id: 1,
            name: "admins",
          },
          {
            id: 2,
            name: "users",
          },
        ],
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 2,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");

      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          email: "email@gmail.com",
          password: "somePassword",
          updated_at: new Date(),
          isAdmin: () => false,
        });

      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["permissions"],
        })
        .returns({
          name: "admin",
          email: "admin@gmail.com",
          updated_at: new Date(),
          permissions: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      // const result = await UserService.update(ctx, req as any);
      // expect(result.name).to.be.equal("updatedName");
      // expect(result.email).to.be.equal("updatedEmail@gmail.com");
      // expect(result.permissions![0].id).to.be.equal(1);
      // expect(result.permissions![0].name).to.be.equal("admins");
      // expect(result.permissions![1].id).to.be.equal(2);
      // expect(result.permissions![1].name).to.be.equal("users");

      // stubPayload.restore();
      stubFindOne.restore();
    });

    // TODO: Currently not implemented
    it.skip("Should throw error if permission does not exists", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        permissions: [
          {
            id: 3,
            name: "doesNotExists",
          },
        ],
      };

      req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      // const stubPayload = sinon.stub(JWTUtils, "getPayload");
      // stubPayload.returns({
      //   iat: 1111,
      //   exp: 2222,
      //   id: 2,
      // });

      const stubFindOne = sinon.stub(repository, "findOne");

      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "user",
          email: "email@gmail.com",
          password: "somePassword",
          updated_at: new Date(),
          isAdmin: () => false,
        });

      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["permissions"],
        })
        .returns({
          name: "admin",
          email: "admin@gmail.com",
          updated_at: new Date(),
          permissions: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      sinon.stub(repository, "exists").returns(false);

      try {
        // await UserService.update(ctx, req as any);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("3"); // group id
        expect(err.message.toLowerCase()).to.include("doesnotexists"); // name
        expect(err.message.toLowerCase()).to.include("does not exists"); // msg
      }

      // stubPayload.restore();
      stubFindOne.restore();
    });
  });
});
