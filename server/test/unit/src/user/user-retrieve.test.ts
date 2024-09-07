import sinon from "sinon";
import { Repository } from "typeorm";
import { User } from "../../../../src/database/models/User";
import { expect } from "chai";
import { UserService } from "../../../../src/services/UserService";
import { ClientResponse } from "../../../../src/enums/ClientResponse";
import { ValueUtils } from "../../../../src/utils/ValueUtils";
import { UserRepository } from "../../../../src/database/repositories/UserRepository";
import { ISelectOptions } from "../../../../src/interfaces/ISelectOptions";

describe("User retrieve by id and JWT token", () => {
  let userRepository: sinon.SinonStubbedInstance<any>;
  let repository: UserRepository;
  let stubUser: sinon.SinonStub<
    [id: number, selectOptions?: ISelectOptions<User> | undefined],
    Promise<User>
  >;
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
    repository = UserRepository.getRepository(ctx.db);
    stubUser = sinon.stub(repository, "get");
  });

  afterEach(async () => {
    stubUser.restore();
  });

  describe("Retrieve user by token", () => {
    it("Should retrieve user by token", async () => {
      const payload = {
        iat: 1111,
        exp: 2222,
        id: 1,
      };

      stubUser.resolves({
        email: "someEmail",
        name: "success",
        password: "somePassword",
        created_at: new Date(),
        updated_at: new Date(),
        is_deleted: false,
        isAdmin: () => false,
      } as unknown as User);

      const result = await new UserService().getByTokenPayload(ctx.db, payload);
      expect(result.name).to.be.equal("success");
    });
  });

  describe("Retrieve user by id", () => {
    it("Should retrieve user by id if he asks for his own info", async () => {
      // Retrieve info about ourselves
      const payload = {
        iat: 1111,
        exp: 2222,
        id: 1,
      };

      stubUser.resolves({
        name: "success",
        isAdmin: () => false,
      } as unknown as User);

      const result = await new UserService().get(ctx.db, 1, payload);

      expect(result.name).to.be.equal("success");
    });

    it("Should throw error on bad id", async () => {
      // Retrieve info about ourselves
      const payload = {
        iat: 1111,
        exp: 2222,
        id: 1,
      };

      stubUser.resolves({
        name: "success",
        isAdmin: () => false,
      } as unknown as User);

      try {
        ValueUtils.validateId(Number("bad id"));
        await new UserService().get(ctx.db, Number("bad id"), payload);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message).to.be.equal(ClientResponse.BAD_USER_ID);
      }
    });

    it("Should throw error if asking for another user", async () => {
      const payload = {
        iat: 1111,
        exp: 2222,
        id: 2,
      };

      stubUser.resolves({
        name: "fail",
        isAdmin: () => false,
      } as unknown as User);

      try {
        await new UserService().get(ctx.db, 1, payload);
        throw new Error("Line above should throw error");
      } catch (err: any) {
        expect(err.message).to.be.equal(ClientResponse.ACCESS_DENIED);
      }
    });

    it("Should retrieve user if admin asking for another user", async () => {
      const payload = {
        iat: 1111,
        exp: 2222,
        id: 2,
      };

      stubUser.withArgs(2).resolves({
        name: "admin",
        isAdmin: () => true,
        permissions: [{ id: 1, name: "admin" }],
      } as unknown as User);

      stubUser.withArgs(1).resolves({
        name: "success",
        isAdmin: () => false,
      } as unknown as User);

      const result = await new UserService().get(ctx.db, 1, payload);
      expect(result.name).to.be.equal("success");
    });
  });
});
