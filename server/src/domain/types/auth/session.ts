import type session from "express-session";

export type Session = session.Session & Partial<session.SessionData>;
