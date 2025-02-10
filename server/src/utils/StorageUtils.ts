import { ValueUtils } from "utils/ValueUtils";

export class StorageUtils {
  /**
   * Returns file path for bucket with raw filename, pattern:
   *
   * - "abcd.jpg" returns: "a/ab/abcd"
   *
   * - "abcd" returns: "a/ab/abcd"
   *
   * If filename is not sha256 encoded value, it will be put in "other/" folder
   */
  public static parseFilePath(filename: string): string {
    filename = ValueUtils.getRawFilename(filename.toLowerCase());
    const sha256Regex = /^[a-f0-9]+$/;
    if (!sha256Regex.test(filename)) {
      return `other/${filename}`;
    }
    // Use first two characters from valid sha256 string
    return `${filename[0]}/${filename[0] + filename[1]}/${filename}`;
  }

  public static getFilePath(filename: string) {
    const fileWithPath = this.parseFilePath(filename);
    return fileWithPath.replace(filename, "");
  }
}
