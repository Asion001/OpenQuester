import { RedisStore } from "connect-redis";
import cors from "cors";
import express from "express";
import session from "express-session";
import helmet from "helmet";
import Redis from "ioredis";

import { ApiContext } from "application/context/ApiContext";
import { EnvType } from "infrastructure/config/Environment";
import { verifySession } from "presentation/middleware/authMiddleware";
import { logMiddleware } from "presentation/middleware/log/debugLogMiddleware";

export class MiddlewareController {
  constructor(
    private readonly ctx: ApiContext,
    private readonly redisClient: Redis
  ) {
    //
  }

  public async initialize() {
    this.ctx.app.use(express.json());
    this.ctx.app.use(helmet());
    this.ctx.app.use(
      cors({
        credentials: true,
        origin: this.ctx.env.CLIENT_URL,
        allowedHeaders: ["Content-Type", "Authorization", "Set-Cookie"],
      })
    );
    this.ctx.app.disable("x-powered-by");
    this.ctx.app.use(logMiddleware);

    // Trust first proxy to enable secure cookies
    this.ctx.app.set("trust proxy", "loopback, linklocal, uniquelocal");

    // Session
    this.ctx.app.use(
      session({
        store: new RedisStore({ client: this.redisClient, prefix: "session:" }),
        secret: this.ctx.env.SESSION_SECRET!,
        resave: false,
        saveUninitialized: false,
        cookie: {
          secure: this.ctx.env.ENV === EnvType.PROD ? true : false,
          maxAge: this.ctx.env.SESSION_MAX_AGE,
          domain: `.${this.ctx.env.CLIENT_DOMAIN}`,
          sameSite: "none",
        },
      })
    );
    this.ctx.app.use(verifySession);
  }
}
