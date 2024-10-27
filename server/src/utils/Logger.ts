import fs from "fs";
import path from "path";

import { Environment } from "../config/Environment";
import {
  blueBright,
  bold,
  cyanBright,
  gray as grayCol,
  green,
  red,
  yellow,
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
    const _prefix = prefix ?? "[INFO]: ";
    const log = green(_prefix + String(text));

    if (Environment.instance.ENV !== "test") {
      console.info(log);
    }

    this.writeFile(log);
  }

  public static warn(text: unknown, prefix?: string) {
    const _prefix = prefix ?? "[INFO]: ";
    const log = yellow(_prefix + String(text));

    if (Environment.instance.ENV !== "test") {
      console.warn(log);
    }

    this.writeFile(log);
  }

  public static error(text: unknown, prefix?: string) {
    const _prefix = prefix ?? "[INFO]: ";
    const log = bold(red(_prefix + String(text)));

    console.error(log);

    this.writeFile(log);
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
        2 // Space indentation
      );
    } else {
      text = String(obj);
    }

    const log = cyanBright(prefix + text);

    console.debug(log);

    this.writeFile(log);
  }

  public static gray(text: string, prefix?: string) {
    const _prefix = prefix ?? "";
    const log = grayCol(_prefix + text);

    console.log(log);

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
