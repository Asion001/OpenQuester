export class TemplateUtils {
  /**
   * Replace all given arguments in provided text.
   *
   * Argument pattern "%someArg" -> replace with `{ someArg: "replacement" }`
   */
  public static text(text: string, args: { [key: string]: any }) {
    return text.replace(/%(\w+)/g, (_, key) => {
      return key in args ? args[key] : `%${key}`;
    });
  }
}
