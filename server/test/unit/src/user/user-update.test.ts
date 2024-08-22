import sinon from "sinon";
import { Repository } from "typeorm";
import { User } from "../../../../src/database/models/User";
import { UserService } from "../../../../src/services/UserService";
import * as bcrypt from "bcryptjs";
import { expect } from "chai";
import { instance, mock, when, verify } from "ts-mockito";

const bcryptMock = mock<typeof bcrypt>();

// Stub bcrypt.hash to return a resolved promise
when(bcryptMock.compare("somePassword", "somePassword")).thenResolve(true);
when(bcryptMock.compare("wrongPassword", "somePassword")).thenResolve(false);
when(bcryptMock.compare("newPassword", "somePassword")).thenResolve(false);

// Use the mock instance in your tests
const bcryptInstance = instance(bcryptMock);

describe("User update", () => {
  let repository: sinon.SinonStubbedInstance<any>;
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

    // Implement methods of user and groups repositories
    repository = {
      findOne: () => null,
      update: () => null,
      exists: () => true,
    } as unknown as Repository<User>;
  });

  describe("User update", () => {
    it("Should throw error with empty data", async () => {
      const dataToUpdate = {};

      const req = {
        body: dataToUpdate,
      };

      try {
        await UserService.update(ctx, req as any);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("at least one field");
      }
    });

    it("Should update user with provided data", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        birthday: "2024-01-01",
      };

      const req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });

      const stubFindOne = sinon.stub(repository, "findOne");
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
        });

      const result = await UserService.update(ctx, req as any);

      expect(result.name).to.be.equal("updatedName");
      expect(result.email).to.be.equal("updatedEmail@gmail.com");
      expect(result.birthday).to.be.not.equal(undefined);
      expect(result.birthday).to.be.not.equal(null);

      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should throw error with empty or bad password", async () => {
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

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });

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
        await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include(
          "password is not provided"
        );
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
        await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("password is incorrect");
      }

      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should update another user if user is admin", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      const req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["permissions"],
        })
        .returns({
          name: "admin",
          groups: [{ id: 1, name: "admins" }],
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
          groups: [{ id: 2, name: "users" }],
          isAdmin: () => false,
        });

      const result = await UserService.update(ctx, req as any);
      expect(result.name).to.be.equal("updatedName");
      expect(result.email).to.be.equal("updatedEmail@gmail.com");
      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should throw error if user is not admin", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      const req = {
        body: dataToUpdate,
        params: { id: 1 },
      };

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 2 },
          relations: ["permissions"],
        })
        .returns({
          name: "notAdmin",
          groups: [{ id: 2, name: "users" }],
          isAdmin: () => false,
        });

      try {
        await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("not able");
      }
      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should not found user", async () => {
      const dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
      };

      const req = {
        body: dataToUpdate,
        params: { id: 777 },
      };

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });

      const stubFindOne = sinon.stub(repository, "findOne");
      stubFindOne
        .withArgs({
          where: { id: 1 },
          relations: ["permissions"],
        })
        .returns({
          name: "admin",
          groups: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      stubFindOne
        .withArgs({
          where: { id: 777 },
          relations: ["permissions"],
        })
        .returns(undefined);

      try {
        await UserService.update(ctx, req as any);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("not found");
      }
      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should update new password", async () => {
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

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });

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

      await UserService.update(ctx, req as any);
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

      await UserService.update(ctx, req as any);
      verify(bcryptMock.hash("newPassword", 10)).once();

      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Default user should not update groups", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        groups: [
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

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 1,
      });

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
        await UserService.update(ctx, req as any);
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include(
          "only admins allowed to change user groups"
        );
      }

      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should update groups", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        groups: [
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

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });

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
          groups: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      const result = await UserService.update(ctx, req as any);
      expect(result.name).to.be.equal("updatedName");
      expect(result.email).to.be.equal("updatedEmail@gmail.com");
      expect(result.groups[0].id).to.be.equal(1);
      expect(result.groups[0].name).to.be.equal("admins");
      expect(result.groups[1].id).to.be.equal(2);
      expect(result.groups[1].name).to.be.equal("users");

      stubPayload.restore();
      stubFindOne.restore();
    });

    it("Should throw error if group does not exists", async () => {
      let dataToUpdate: any;
      let req: any;

      dataToUpdate = {
        name: "updatedName",
        email: "updatedEmail@gmail.com",
        password: "somePassword",
        groups: [
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

      const stubPayload = sinon.stub(UserService, "getPayload");
      stubPayload.returns({
        iat: 1111,
        exp: 2222,
        id: 2,
      });

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
          groups: [{ id: 1, name: "admins" }],
          isAdmin: () => true,
        });

      sinon.stub(repository, "exists").returns(false);

      try {
        await UserService.update(ctx, req as any);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("3"); // group id
        expect(err.message.toLowerCase()).to.include("doesnotexists"); // name
        expect(err.message.toLowerCase()).to.include("does not exists"); // msg
      }

      stubPayload.restore();
      stubFindOne.restore();
    });
  });
});
