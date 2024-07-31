import { Environment } from "./config/Environment ";
import { ServeApi } from "./ServeApi";
import dotenv from "dotenv";

dotenv.config();

Environment.load();

new ServeApi();

console.log("Server started, api serve complete successfully");
