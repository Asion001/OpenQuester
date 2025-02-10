import { RedisStore } from "connect-redis";
import cors from "cors";
import express from "express";
import session from "express-session";
import helmet from "helmet";
import Redis from "ioredis";

import { EnvType } from "config/Environment";
import { verifySession } from "middleware/authMiddleware";
import { logMiddleware } from "middleware/log/DebugLogMiddleware";
import { ApiContext } from "services/context/ApiContext";

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
      })
    );
    this.ctx.app.disable("x-powered-by");
    this.ctx.app.use(logMiddleware);

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
          sameSite: "lax",
        },
      })
    );
    this.ctx.app.use(verifySession);
  }
}
