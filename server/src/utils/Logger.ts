import fs from "fs";
import path from "path";

import {
  blueBright,
  bold,
  cyanBright,
  gray as grayCol,
  green,
  red,
  yellow,
  magenta,
} from "colorette";
import { LogLevel } from "../types/log/log";

/**
 * Logger class used for writing logs and for prettier console output
 */
export class Logger {
  public static checkAccess(logLevel: LogLevel, requiredLogLevel: LogLevel) {
    const levels = ["info", "debug", "verbose"];
    const logIndex = levels.indexOf(logLevel);
    const requiredLogIndex = levels.indexOf(requiredLogLevel);

    if (logIndex === -1 || logIndex < requiredLogIndex) {
      return false;
    }

    return true;
  }

  public static info(text: unknown, prefix?: string) {
    return this._log(green, (prefix ?? "[INFO]: ") + String(text));
  }

  public static warn(text: unknown, prefix?: string) {
    return this._log(yellow, (prefix ?? "[WARNING]: ") + String(text));
  }

  public static error(text: unknown, prefix?: string) {
    return this._log(red, bold((prefix ?? "[ERROR]: ") + String(text)));
  }

  public static pink(text: unknown, prefix?: string) {
    return this._log(magenta, (prefix ?? "") + String(text));
  }

  public static gray(text: unknown, prefix?: string) {
    return this._log(grayCol, (prefix ?? "") + String(text));
  }

  public static debug(obj: unknown) {
    const prefix = "[DEBUG]: ";
    let text = "";

    if (obj instanceof Map) {
      obj = Object.fromEntries(obj);
    }

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
        2
      );
    } else {
      text = String(obj);
    }

    const log = cyanBright(prefix + text);

    console.debug(log);

    this._writeFile(log);
  }

  public static logMigrationComplete(version: string) {
    const prefix = "[Migration]";

    const log = `${prefix} Migration complete for version ${version}`;

    console.log(blueBright(log));

    this._writeFile(log);
  }

  private static async _log(color: any, text: string) {
    const log = `[${new Date().toISOString()}] ${text}`;
    console.log(color(log));
    this._writeFile(log);
  }

  private static async _writeFile(text: unknown) {
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
