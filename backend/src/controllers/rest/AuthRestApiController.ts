import { Express } from "express";

export class AuthRestApiController {
  constructor(app: Express) {
    app.get("/v1/auth", (req, res) => {
      return res.send("Hello, this is authorization endpoint");
    });
  }
}
