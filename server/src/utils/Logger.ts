import { blue, bold, green, red, yellow } from "colorette";
import fs from "fs";
import path from "path";

export class Logger {
  public static info(text: any) {
    const prefix = "[INFO]: ";
    const log = prefix + String(text);

    console.info(green(log));

    this.writeFile(log);
  }

  public static warn(text: any) {
    const prefix = "[WARNING]: ";
    const log = prefix + String(text);

    console.warn(yellow(log));

    this.writeFile(log);
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

    console.debug(bold(blue(log)));

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