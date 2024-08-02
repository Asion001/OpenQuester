import { Environment } from "./config/Environment ";
import { ServeApi } from "./ServeApi";
import dotenv from "dotenv";
import { green, red, bold } from "colorette";

dotenv.config();

try {
  Environment.load();
} catch (err: any) {
  console.error(bold(red(err)));
  process.exit(1);
}

new ServeApi();

console.log("\n" + green("Server started, api serve complete successfully"));
