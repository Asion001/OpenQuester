import "express-session";

import { User } from "database/models/User";
import { Session } from "types/auth/session";

declare module "express-session" {
  interface SessionData {
    userId: number;
  }
}

declare module "express-serve-static-core" {
  interface Request {
    user?: User;
  }
}

declare global {
  namespace Express {
    interface Request {
      session: Session;
    }
  }
}
