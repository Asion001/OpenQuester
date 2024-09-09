import fs from "fs";
import path from "path";
import cluster from "cluster";

import { Environment } from "../config/Environment";
import { blueBright, bold, cyanBright, green, red, yellow } from "colorette";
import { LogLevel } from "../types/log/log";

/**
 * Logger class used for writing logs and for prettier console output
 */
export class Logger {
  public static checkAccess(logLevel: string, requiredLogLevel: LogLevel) {
    const levels = ["info", "debug", "verbose"];
    const logIndex = levels.indexOf(logLevel);
    const requiredLogIndex = levels.indexOf(requiredLogLevel);

    if (logIndex === -1 || logIndex < requiredLogIndex) {
      return false;
    }

    return true;
  }

  public static info(text: unknown, logWorker: boolean = false) {
    if (cluster.isPrimary || logWorker) {
      const prefix = "[INFO]: ";
      const log = prefix + String(text);

      if (Environment.instance.ENV !== "test") {
        console.info(green(log));
      }

      this.writeFile(log);
    }
  }

  public static warn(text: unknown, logWorker: boolean = false) {
    if (cluster.isPrimary || logWorker) {
      const prefix = "[WARNING]: ";
      const log = prefix + String(text);

      if (Environment.instance.ENV !== "test") {
        console.warn(yellow(log));
      }

      this.writeFile(log);
    }
  }

  public static error(text: unknown) {
    const prefix = "[ERROR]: ";
    const log = prefix + String(text);

    console.error(bold(red(log)));

    this.writeFile(log);
  }

  public static debug(obj: unknown) {
    const prefix = "[DEBUG]: ";
    let text = "";

    // Parse object to show it fully
    if (typeof obj === "object") {
      const seen = new Set();
      text = JSON.stringify(
        obj,
        (_, value) => {
          if (typeof value === "object" && value !== null) {
            if (seen.has(value)) {
              // Replace circular references with a placeholder
              return `[Circular]`;
            }
            seen.add(value);
          }
          return value;
        },
        2 // Space indentation
      );
    } else {
      text = String(obj);
    }

    const log = prefix + text;

    console.debug(cyanBright(log));

    this.writeFile(log);
  }

  public static logMigrationComplete(version: string) {
    const prefix = "[Migration]";

    const log = `${prefix} Migration complete for version ${version}`;

    console.log(blueBright(log));

    this.writeFile(log);
  }

  private static async writeFile(text: unknown) {
    const logPath = path.resolve(process.cwd(), `logs/logs.log`);

    if (!fs.existsSync(logPath)) {
      fs.mkdirSync("logs/", { recursive: true });
      fs.writeFileSync(logPath, "");
    }

    fs.appendFile(logPath, text + "\n", (err) => {
      if (err) {
        const prefix = "[ERROR]: ";
        const log = prefix + String(err?.message);

        console.error(bold(red(log)));
      }
    });
  }
}
