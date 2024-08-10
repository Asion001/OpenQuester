import { Environment } from "./config/Environment";
import { ServeApi } from "./ServeApi";
import { Logger } from "./utils/Logger";

try {
  // If environment loaded by DB - don't load it again
  Environment.load(false);
} catch (err: any) {
  Logger.error(err.message);
  gracefulShutdown("ENV Exception");
}

const api = new ServeApi();

if (!api.server) {
  gracefulShutdown("API Serve exception");
} else {
  Logger.info("Server started, api serve complete successfully");
}

// Signals handling
process.on("SIGINT", () => gracefulShutdown("SIGINT"));
process.on("SIGTERM", () => gracefulShutdown("SIGTERM"));
process.on("uncaughtException", (err) => {
  Logger.error(`Uncaught Exception: ${err}`);
  gracefulShutdown("uncaughtException");
});

function gracefulShutdown(signal: string) {
  Logger.warn(`Received ${signal}, shutting down gracefully...`);

  api.server?.close(() => {
    Logger.info("Server closed");
    process.exit(0);
  });

  // Set a timeout to force exit if server doesn't close in time
  setTimeout(() => {
    Logger.error("Forcing server exit");
    process.exit(1);
  }, 10000);
}
