import express from "express";
import { createServer, type Server } from "http";
import { Server as IOServer } from "socket.io";

import { Environment } from "config/Environment";
import { Database } from "database/Database";
import { Logger } from "utils/Logger";
import { AppDataSource } from "database/DataSource";
import { ApiContext } from "services/context/ApiContext";
import { ErrorController } from "error/ErrorController";
import { ServeApi } from "./ServeApi";

const main = async () => {
  Logger.info(`Initializing API Context`);

  // Initialize api context
  const app = express();
  const io = new IOServer(createServer(app), {
    cors: {
      origin: "*",
      methods: ["GET", "POST"],
      credentials: true,
    },
    connectTimeout: 45000,
    transports: ["websocket", "polling"],
  });

  const context = new ApiContext({
    db: Database.getInstance(AppDataSource),
    env: Environment.instance,
    io,
    app,
  });

  Logger.info(`Starting server process: ${process.pid}`);

  context.env.load(false);

  ["SIGINT", "SIGTERM", "uncaughtException"].forEach((signal) => {
    process.on(
      signal,
      async (error) => await gracefulShutdown(api?.server, error)
    );
  });

  const api = new ServeApi(context);

  await api.init();

  if (!api || !api.server) {
    Logger.error(`API serve error`);
    await gracefulShutdown(api?.server);
  }
};

async function gracefulShutdown(server: Server | undefined, error?: unknown) {
  if (error instanceof Error) {
    await ErrorController.resolveError(error);
    Logger.warn("Server closed due to error");
    process.exit(1);
  }
  if (!server) {
    Logger.warn("Server not initiated");
    return process.exit(1);
  }
  setTimeout(() => process.exit(1), 5000);
  server.close();
  Logger.warn("Server closed gracefully");
  process.exit(0);
}

main();
