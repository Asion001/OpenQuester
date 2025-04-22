import { instrument } from "@socket.io/admin-ui";
import { hashSync } from "bcryptjs";
import express from "express";
import { createServer, type Server } from "http";
import { Server as IOServer } from "socket.io";

import { ApiContext } from "application/context/ApiContext";
import { ErrorController } from "domain/errors/ErrorController";
import { Environment, EnvType } from "infrastructure/config/Environment";
import { RedisConfig } from "infrastructure/config/RedisConfig";
import { Database } from "infrastructure/database/Database";
import { AppDataSource } from "infrastructure/database/DataSource";
import { Logger } from "infrastructure/utils/Logger";
import { ServeApi } from "presentation/ServeApi";

const main = async () => {
  Logger.info(`Initializing API Context`);
  Logger.info(`API version: ${process.env.npm_package_version}`);

  // Initialize api context
  const app = express();

  const origins =
    process.env.SOCKET_IO_CORS_ORIGINS ?? process.env.CORS_ORIGINS;

  const allowedHosts = origins ? origins.split(",") : [];
  let allOriginsAllowed = allowedHosts.includes("*");

  Logger.gray(
    `Allowed CORS origins for socket.io: [${allowedHosts}]`,
    "[IO CORS]: "
  );
  if (allowedHosts.some((host) => host === "*")) {
    allOriginsAllowed = true;
    Logger.warn("Current socket.io CORS allows all origins !!", "[IO CORS]: ");
  }

  const io = new IOServer(createServer(app), {
    cors: {
      origin: (origin, callback) => {
        if (allOriginsAllowed || !origin) {
          return callback(null, true);
        }

        try {
          const domain = new URL(origin).hostname;
          const isOriginAllowed = allowedHosts.some(
            (allowedHost) =>
              domain === allowedHost ||
              domain.endsWith(`.${allowedHost}`) ||
              origin === allowedHost
          );

          if (isOriginAllowed) {
            return callback(null, origin);
          }
          return callback(
            new Error(`CORS policy: Origin '${origin}' is not allowed`)
          );
        } catch {
          return callback(new Error("CORS policy: Invalid origin provided"));
        }
      },
    },
    cookie: true,
    connectTimeout: 45000,
    transports: ["websocket", "polling"],
  });

  const context = new ApiContext({
    db: Database.getInstance(AppDataSource),
    env: Environment.instance,
    io,
    app,
  });

  if (context.env.SOCKET_IO_ADMIN_UI_ENABLE) {
    Logger.info("Socket.IO Admin UI enabled");
    instrument(io, {
      auth: {
        type: "basic",
        username: context.env.SOCKET_IO_ADMIN_UI_USERNAME,
        password: hashSync(context.env.SOCKET_IO_ADMIN_UI_PASSWORD, 10),
      },
      mode: context.env.ENV === EnvType.PROD ? "production" : "development",
    });
  }

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
