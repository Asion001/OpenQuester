import { expect } from "chai";

import { Database } from "../../../../src/database/Database";
import { UnitTestUtils } from "../../UnitTestUtils";
import { Entity } from "typeorm";

const utils = new UnitTestUtils();

@Entity()
class MockEntity {
  //
}

describe("Database", () => {
  let db: Database;

  before(async () => {
    db = new Database();
  });

  describe("Database", () => {
    it("Should disconnect db with method", async () => {
      // Wait for db connection
      await utils.waitForSuccess(async () => db.connected, 15000, 25);

      expect(db.connected).to.be.equal(true);
      db.disconnect();

      await utils.waitForSuccess(async () => !db.connected, 15000, 25);
      expect(db.connected).to.be.equal(false);

      try {
        db.getRepository(MockEntity);
        throw new Error("Method above should throw error");
      } catch (err: any) {
        expect(err.message.toLowerCase()).to.include("not connected");
      }
      db.connect();
    });

    it("Should connect on DB creation", async () => {
      // Wait for db connection
      await utils.waitForSuccess(async () => db.connected, 15000, 25);
      expect(db.connected).to.be.equal(true);
    });

    it("Should connect db with method", async () => {
      // Wait for db connection
      await utils.waitForSuccess(async () => db.connected, 10000, 25);

      expect(db.connected).to.be.equal(true);
      db.disconnect();

      await utils.waitForSuccess(async () => !db.connected, 10000, 25);

      expect(db.connected).to.be.equal(false);

      db.connect();
      await utils.waitForSuccess(async () => db.connected, 10000, 25);

      expect(db.connected).to.be.equal(true);
    });

    it("Should return repository", async () => {
      // Wait for db connection
      const repository = db.getRepository(MockEntity);

      expect(repository).to.have.property("find");
      expect(repository).to.have.property("findOne");
      expect(repository).to.have.property("save");
      expect(repository).to.have.property("createQueryBuilder");
      expect(repository).to.have.property("delete");
    });
  });
});
