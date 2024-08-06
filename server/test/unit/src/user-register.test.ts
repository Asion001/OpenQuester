import sinon from "sinon";
import * as bcrypt from "bcryptjs";
import { mock, instance, when, verify } from "ts-mockito";
import { expect } from "chai";
import { Database } from "../../../src/database/Database";
import { User } from "../../../src/database/models/User";
import { AuthService } from "../../../src/services/AuthService";
import { Repository } from "typeorm";

// Create a mock instance of bcrypt
const bcryptMock = mock<typeof bcrypt>();

// Stub bcrypt.hash to return a resolved promise
when(bcryptMock.hash("password123", 10)).thenResolve("hashedPassword");
when(bcryptMock.compare("password123", "hashedPassword")).thenResolve(true);
when(bcryptMock.compare("wrongPassword", "correctPassword")).thenResolve(false);

// Use the mock instance in your tests
const bcryptInstance = instance(bcryptMock);

describe("AuthService", () => {
  let db: sinon.SinonStubbedInstance<Database>;
  let userRepository: sinon.SinonStubbedInstance<any>;
  let selectQueryBuilder: sinon.SinonStubbedInstance<any>;

  beforeEach(async () => {
    db = sinon.createStubInstance(Database);

    selectQueryBuilder = {
      where: sinon.stub().returnsThis(),
      orWhere: sinon.stub().returnsThis(),
      getOne: () => null,
    };

    userRepository = {
      save: sinon.stub().resolves(true),
      getOne: sinon.stub().resolves(false),
      createQueryBuilder: () => selectQueryBuilder,
    } as unknown as Repository<User>;

    db.getRepository.returns(userRepository);
  });

  describe("register", () => {
    it("should register a user successfully", async () => {
      const userData = {
        name: "John Doe",
        email: "john@example.com",
        password: "password123",
        birthday: new Date("1990-01-01").getTime(),
        avatar: null,
      };

      // Mock token generation
      sinon.stub(AuthService, "generateTokens").returns({
        access_token: "accessToken",
        refresh_token: "refreshToken",
      });

      const result = await AuthService.register(
        db as any,
        userData as any,
        bcryptInstance
      );

      expect(result).to.have.property("access_token");
      expect(result).to.have.property("refresh_token");
      verify(bcryptMock.hash("password123", 10)).called();
    });

    it("should throw an error if registration data is invalid", async () => {
      const userData = { name: "John Doe", email: "", password: "" };

      try {
        await AuthService.register(db as any, userData as any, bcryptInstance);
        throw new Error("Expected register method to throw error.");
      } catch (err: any) {
        expect(err.message).to.include("Provide all required fields");
      }
    });
  });

  describe("login", () => {
    it("should log in a user successfully", async () => {
      const userData = {
        name: "John Doe",
        email: "john@example.com",
        password: "password123",
      };

      const user = new User();
      user.password = await bcryptInstance.hash(userData.password, 10);

      sinon.stub(selectQueryBuilder, "getOne").returns(user);

      const result = await AuthService.login(
        db as any,
        userData as any,
        bcryptInstance
      );

      expect(result).to.have.property("access_token");
      expect(result).to.have.property("refresh_token");
      expect(result.access_token).to.equal("accessToken");
      expect(result.refresh_token).to.equal("refreshToken");
    });

    it("should throw an error if login data is invalid", async () => {
      const userData = { email: "", password: "" };

      try {
        await AuthService.login(db as any, userData as any, bcryptInstance);
        throw new Error("Expected method above to throw error.");
      } catch (err: any) {
        expect(err.message).to.include("Provide all required fields");
      }
    });
    it("should throw an error if user does not exist", async () => {
      const userData = {
        email: "nonexistent@example.com",
        password: "password123",
      };
      sinon.stub(selectQueryBuilder, "getOne").returns(null);

      try {
        await AuthService.login(db as any, userData as any, bcryptInstance);
        throw new Error("Expected method above to throw error.");
      } catch (err: any) {
        expect(err.message).to.include("does not exists");
      }
    });
  });

  it("should throw an error if password is incorrect", async () => {
    const userData = {
      email: "john@example.com",
      password: "wrongPassword",
    };
    const user = new User();
    user.password = await bcrypt.hash("correctPassword", 10);

    sinon.stub(selectQueryBuilder, "getOne").returns(user);

    try {
      await AuthService.login(db as any, userData as any, bcryptInstance);
      throw new Error("Expected method above to throw error.");
    } catch (err: any) {
      expect(err.message).to.include("Wrong password");
    }
  });

  it("should generate token correctly", async () => {
    const userId = 1;
    const result = AuthService.generateTokens(userId);

    expect(result).to.have.property("access_token");
    expect(result).to.have.property("refresh_token");
    expect(result.access_token.length).greaterThan(100);
    expect(result.refresh_token.length).greaterThan(100);
    expect(result.access_token.split(".").length).to.be.equal(3);
    expect(result.refresh_token.split(".").length).to.be.equal(3);
  });

  it("refresh token correctly", async () => {
    const userId = 1;
    const token = AuthService.generateTokens(userId).access_token;

    const result = AuthService.refreshToken(token);

    expect(result).to.have.property("access_token");
    expect(result).to.have.property("refresh_token");
  });

  it("refresh bad token should throw error", async () => {
    try {
      AuthService.refreshToken("Some wrong token");
      throw new Error("Expected method above to throw error.");
    } catch (err: any) {
      err.message = err.message.toLowerCase();
      expect(err.message).to.include("invalid");
    }
  });
});
