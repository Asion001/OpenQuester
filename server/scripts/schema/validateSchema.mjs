import { Validator } from "@seriousme/openapi-schema-validator";
import fs from "fs";

const openapiSchema = JSON.parse(
  fs.readFileSync("../openapi/schema.json", "utf-8")
);

const validator = new Validator();
const res = await validator.validate(openapiSchema);

if (res.valid) {
  console.log(`Specification matches schema for version ${validator.version}`);
} else {
  console.error("Specification does not match Schema");
  throw new Error(JSON.stringify(res.errors, null, 2));
}
