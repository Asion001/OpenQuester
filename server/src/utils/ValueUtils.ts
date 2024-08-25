export class ValueUtils {
  /**
   * Return specified date, but with 12:00:00 time
   * We prefer specifying 12:00:00 as hours to birthday to avoid UTC convert problems
   */
  public static getBirthday(date: Date | string): Date {
    if (typeof date === "object") {
      const hours = date.getHours();
      if (hours < 6) {
        const m = date.getMonth() + 1;
        // Set same date without hours
        date = `${date.getFullYear()}-${m}-${date.getDate()}`;
      }
    } else if (date.split(":").length > 0) {
      // Remove hours
      date = date.replace(date.split(" ")[1], "");
    }
    const dateTime = date + " " + "12:00:00";
    return new Date(dateTime);
  }

  /**
   * Validates that given id is numeric and valid
   */
  public static validateId(id: string | number): number {
    id = Number(id);

    if (id < 1 || isNaN(id)) {
      throw new Error("Please specify id that greater than 1");
    }

    return id;
  }

  public static checkPrimitiveType(
    value: unknown,
    expectedType: "string" | "number" | "boolean" | "array" | "object"
  ) {
    let success = false;

    if (this.isBad(value)) {
      return false;
    }
    switch (expectedType) {
      case "string":
        if (this.isString(value) && !this.isEmpty(value)) success = true;
        break;
      case "number":
        if (this.isNumeric(value)) success = true;
        break;
      case "boolean":
        if (String(value) === "true" || String(value) === "1") success = true;
        break;
      case "array":
        if (this.isArray(value) && !this.isEmpty(value)) success = true;
        break;
      case "object":
        if (this.isObject(value) && !this.isEmpty(value)) success = true;
        break;
    }
    return success;
  }

  /**
   * Parses values to boolean, but works well only with primitive types
   *
   * Usage: `ValueUtils.parseBoolean("true")` or `ValueUtils.parseBoolean(0)`
   */
  public static parseBoolean(value: unknown): boolean {
    if (this.isBoolean(value)) return value;
    if (this.isBad(value)) return false;
    if (String(value) === "true" || String(value) === "1") return true;
    if (String(value) === "false" || String(value) === "0") return false;
    return !!value;
  }

  public static isError(value: unknown) {
    return value instanceof Error && typeof value.message !== "undefined";
  }

  public static isBad(value: unknown) {
    return value === undefined || value === null;
  }

  public static isBoolean(value: unknown) {
    return typeof value === "boolean";
  }

  public static isNumeric(value: unknown) {
    return this.isNumber(value) || !isNaN(Number(value));
  }

  public static isNumber(value: unknown) {
    return typeof value === "number" && isFinite(value);
  }

  public static isObject(value: unknown) {
    return !!value && typeof value === "object" && !this.isBad(value);
  }

  public static isArray(arr: unknown) {
    return Array.isArray(arr);
  }

  public static isString(value: unknown) {
    return typeof value === "string" || value instanceof String;
  }

  public static isEmpty(value: unknown) {
    return (
      (this.isString(value) && value === "") ||
      (this.isArray(value) && value.length === 0) ||
      (this.isObject(value) && Object.keys(value).length === 0)
    );
  }

  public static isValidObject(obj: object) {
    if (this.isBad(obj) || this.isEmpty(obj)) {
      return false;
    }
    for (const val of Object.values(obj)) {
      if (this.isBad(val) || this.isEmpty(val)) {
        return false;
      }
    }
    return true;
  }
}
