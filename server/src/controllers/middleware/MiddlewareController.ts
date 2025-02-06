import session from "express-session";
import express from "express";
import passport from "passport";
import cors from "cors";
import Redis from "ioredis";
import helmet from "helmet";

import { ApiContext } from "services/context/ApiContext";
import { logMiddleware } from "middleware/log/DebugLogMiddleware";
import { RedisStore } from "connect-redis";
import { ENV_TYPES } from "config/Environment";
import { configureDiscordStrategy } from "config/passport";
import { refreshSession, verifySession } from "middleware/authMiddleware";

export class MiddlewareController {
  constructor(
    private readonly ctx: ApiContext,
    private readonly redisClient: Redis
  ) {
    //
  }

  public async initialize() {
    this.ctx.app.use(express.json());
    this.ctx.app.use(cors());
    this.ctx.app.use(helmet());
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
          secure: this.ctx.env.ENV === ENV_TYPES.PROD,
          maxAge: this.ctx.env.SESSION_MAX_AGE, // 7 days
        },
      })
    );
    configureDiscordStrategy();
    this.ctx.app.use(passport.initialize());
    this.ctx.app.use(passport.session());
    this.ctx.app.use(verifySession);
    this.ctx.app.use(refreshSession);
  }
}
