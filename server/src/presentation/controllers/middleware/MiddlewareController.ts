import { RedisStore } from "connect-redis";
import cors from "cors";
import express from "express";
import session from "express-session";
import helmet from "helmet";
import Redis from "ioredis";

import { ApiContext } from "application/context/ApiContext";
import { ClientError } from "domain/errors/ClientError";
import { EnvType } from "infrastructure/config/Environment";
import { Logger } from "infrastructure/utils/Logger";
import { verifySession } from "presentation/middleware/authMiddleware";
import { logMiddleware } from "presentation/middleware/log/debugLogMiddleware";

const CORS_PREFIX = "[CORS]: ";

export class MiddlewareController {
  private readonly allowedHosts: string[];
  private readonly allOriginsAllowed: boolean = false;

  constructor(
    private readonly ctx: ApiContext,
    private readonly redisClient: Redis
  ) {
    this.allowedHosts = this.ctx.env.CORS_ORIGINS;
    Logger.gray(
      `Allowed CORS origins for current instance: [${this.allowedHosts}]`,
      CORS_PREFIX
    );
    if (this.allowedHosts.some((host) => host === "*")) {
      this.allOriginsAllowed = true;
      Logger.warn("Current instance's CORS allows all origins !!", CORS_PREFIX);
    }
  }

  public async initialize() {
    this.ctx.app.use(express.json({ limit: "800kb" }));
    this.ctx.app.use(express.urlencoded({ limit: "800kb", extended: true }));
    this.ctx.app.use(helmet());
    this.ctx.app.use(
      cors({
        credentials: true,
        origin: (origin, callback) => {
          if (this.allOriginsAllowed || !origin) {
            return callback(null, true);
          }

          try {
            const domain = new URL(origin).hostname;

            const isOriginAllowed = this.allowedHosts.some(
              (allowedHost) =>
                domain === allowedHost || domain.endsWith(`.${allowedHost}`)
            );

            if (isOriginAllowed) {
              return callback(null, origin);
            }

            return callback(
              new ClientError(`CORS policy: Origin '${origin}' is not allowed`)
            );
          } catch {
            return callback(
              new ClientError("CORS policy: Invalid origin provided")
            );
          }
        },
        methods: ["GET", "POST", "PATCH", "DELETE", "OPTIONS"],
        allowedHeaders: ["Content-Type", "Authorization"],
      })
    );
    this.ctx.app.disable("x-powered-by");
    this.ctx.app.use(logMiddleware);

    // Trust first proxy to enable secure cookies
    this.ctx.app.set("trust proxy", 1);

    // Session
    this.ctx.app.use(
      session({
        store: new RedisStore({ client: this.redisClient, prefix: "session:" }),
        secret: this.ctx.env.SESSION_SECRET!,
        resave: false,
        saveUninitialized: false,
        cookie: {
          secure: this.ctx.env.ENV === EnvType.PROD,
          maxAge: this.ctx.env.SESSION_MAX_AGE,
          sameSite: "none",
          domain: this.ctx.env.API_DOMAIN,
        },
      })
    );
    this.ctx.app.use(verifySession);
  }
}
