import fs from "fs";

import { mock, instance, when } from "ts-mockito";
import { expect } from "chai";

import path from "path";
import crypto from "crypto";
import { JWTUtils } from "../../../../src/utils/JWTUtils";

// Create a mock instance of bcrypt
const cryptoMock = mock<typeof crypto>();
const buffer = Buffer.from("goodSecret", "utf-8");

// Stub bcrypt.hash to return a resolved promise
when(cryptoMock.randomBytes(512)).thenReturn(buffer);

// Use the mock instance in your tests
const cryptoInstance = instance(cryptoMock);
// Use test paths to not interrupt production part
const testWritePath = path.resolve(process.cwd(), "storage/test/");
const filePath = path.resolve(testWritePath, ".secret.json");

const options = {
  length: 512,
  cryptoInstance: cryptoInstance,
  writePath: testWritePath,
};

describe("JWTUtils", () => {
  beforeEach(async () => {
    if (fs.existsSync(filePath)) {
      fs.rmSync(filePath);
    }
  });

  after(async () => {
    if (fs.existsSync(testWritePath)) {
      fs.rm(testWritePath, { recursive: true, force: true }, () => null);
    }
  });

  describe("generateSecret", () => {
    it("Should generate secret and write it to the file", async () => {
      // Check return result
      const result = JWTUtils.generateSecret(options);

      expect(result).to.be.equal(buffer.toString("base64"));

      // Read file for result
      const file = fs.readFileSync(filePath);
      const data = JSON.parse(file.toString());

      expect(data).to.have.property("jwt_secret");
      expect(data.jwt_secret).to.be.equal(buffer.toString("base64"));
    });

    it("Should create folder if not exists", async () => {
      // This covers functionality of "fs", but added to make 100% coverage :)
      if (fs.existsSync(testWritePath)) {
        fs.rmdirSync(testWritePath);
      }

      JWTUtils.generateSecret(options);
      expect(fs.existsSync(testWritePath)).to.be.equal(true);
    });
  });

  describe("getSecret", () => {
    it("Should get secret from file", async () => {
      if (fs.existsSync(filePath)) {
        fs.rmSync(filePath);
      }
      // From previous tests we already know, that this will work fine
      JWTUtils.generateSecret(options);

      const data = JWTUtils.getSecret(options);
      expect(data).to.be.equal(buffer.toString("base64"));
    });

    it("Should write secret to file if it not exists", async () => {
      if (fs.existsSync(filePath)) {
        fs.rmSync(filePath);
      }

      expect(fs.existsSync(filePath)).to.be.equal(false);

      const data = JWTUtils.getSecret(options);

      expect(data).to.be.equal(buffer.toString("base64"));
      expect(fs.existsSync(filePath)).to.be.equal(true);
    });

    it("Should write secret to file if it is empty", async () => {
      if (fs.existsSync(filePath)) {
        fs.rmSync(filePath);
      }
      fs.writeFileSync(filePath, "");

      const data = JWTUtils.getSecret(options);

      expect(data).to.be.equal(buffer.toString("base64"));
      expect(fs.existsSync(filePath)).to.be.equal(true);
    });
  });
});
