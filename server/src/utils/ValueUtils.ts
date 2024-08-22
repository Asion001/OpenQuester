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
}
