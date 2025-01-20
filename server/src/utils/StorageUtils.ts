import { SHA256Characters } from "constants/sha256";
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
    if (
      filename.length < 2 ||
      !SHA256Characters.includes(filename[0]) ||
      !SHA256Characters.includes(filename[1])
    ) {
      return `other/${filename}`;
    }
    return `${filename[0]}/${filename.substring(0, 2)}/${filename}`;
  }
}
