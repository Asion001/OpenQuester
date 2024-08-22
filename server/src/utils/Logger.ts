import { blue, bold, green, red, yellow } from "colorette";
import fs from "fs";
import path from "path";
import { Environment } from "../config/Environment";
import cluster from "cluster";

export class Logger {
  public static info(text: any, logWorker: boolean = false) {
    if (cluster.isPrimary || logWorker) {
      const prefix = "[INFO]: ";
      const log = prefix + String(text);

      if (Environment.ENV !== "test") {
        console.info(green(log));
      }

      this.writeFile(log);
    }
  }

  public static warn(text: any, logWorker: boolean = false) {
    if (cluster.isPrimary || logWorker) {
      const prefix = "[WARNING]: ";
      const log = prefix + String(text);

      if (Environment.ENV !== "test") {
        console.warn(yellow(log));
      }

      this.writeFile(log);
    }
  }

  public static error(text: any) {
    const prefix = "[ERROR]: ";
    const log = prefix + String(text);

    console.error(bold(red(log)));

    this.writeFile(log);
  }

  public static debug(text: any) {
    const prefix = "[DEBUG]: ";
    const log = prefix + String(text);

    console.debug(blue(log));

    this.writeFile(log);
  }

  private static writeFile(text: any) {
    const logPath = path.resolve(process.cwd(), `logs/logs.log`);

    if (!fs.existsSync(logPath)) {
      fs.mkdirSync("logs/", { recursive: true });
      fs.writeFileSync(logPath, "");
    }

    fs.appendFileSync(logPath, text + "\n");
  }
}
