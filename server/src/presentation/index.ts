import express from "express";
import { createServer, type Server } from "http";
import { Server as IOServer } from "socket.io";

import { ApiContext } from "application/context/ApiContext";
import { ErrorController } from "domain/errors/ErrorController";
import { Environment } from "infrastructure/config/Environment";
import { RedisConfig } from "infrastructure/config/RedisConfig";
import { Database } from "infrastructure/database/Database";
import { AppDataSource } from "infrastructure/database/DataSource";
import { Logger } from "infrastructure/utils/Logger";
import { ServeApi } from "presentation/ServeApi";

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
      async (error) => await gracefulShutdown(context, api?.server, error)
    );
  });

  const api = new ServeApi(context);

  await api.init();

  if (!api || !api.server) {
    Logger.error(`API serve error`);
    await gracefulShutdown(context, api?.server);
  }
};

async function gracefulShutdown(
  ctx: ApiContext,
  server: Server | undefined,
  error?: unknown
) {
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
  await ctx.db.disconnect();
  await ctx.io.close();
  await RedisConfig.disconnect();
  Logger.warn("Server closed gracefully");
  process.exit(0);
}

main();
