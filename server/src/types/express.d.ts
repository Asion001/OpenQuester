import "express-session";

import { Session } from "type/auth/session";

declare module "express-session" {
  interface SessionData {
    userId: number;
  }
}

declare global {
  namespace Express {
    interface Request {
      session: Session;
    }
  }
}
