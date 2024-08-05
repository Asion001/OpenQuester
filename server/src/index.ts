import { Environment } from "./config/Environment";
import { ServeApi } from "./ServeApi";
import { green, red, bold, yellow } from "colorette";

const gracefulShutdown = (signal: string) => {
  console.log(yellow(`Received ${signal}, shutting down gracefully...`));

  api.server.close(() => {
    console.log(green("Server closed"));
    process.exit(0);
  });

  // Set a timeout to force exit if server doesn't close in time
  setTimeout(() => {
    console.error(bold(red("Forcing server exit")));
    process.exit(1);
  }, 10000);
};

try {
  Environment.load();
} catch (err: any) {
  console.error(bold(red(err.message)));
  gracefulShutdown("Exception");
}

const api = new ServeApi();

console.log("\n" + green("Server started, api serve complete successfully"));

// Signals handling
process.on("SIGINT", () => gracefulShutdown("SIGINT"));
process.on("SIGTERM", () => gracefulShutdown("SIGTERM"));
process.on("uncaughtException", (err) => {
  console.error(bold(red(`Uncaught Exception: ${err.message}`)));
  gracefulShutdown("uncaughtException");
});
