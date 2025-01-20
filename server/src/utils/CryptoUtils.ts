import bcrypt from "bcryptjs";

import { ICrypto } from "types/ICrypto";

export class CryptoUtils {
  public static async hash(
    data: string,
    salt: string | number,
    crypto?: ICrypto
  ) {
    crypto = crypto ?? bcrypt;
    return crypto.hash(data as string, salt);
  }

  public static async compare(data: string, hash: string, crypto?: ICrypto) {
    crypto = crypto ?? bcrypt;
    return crypto.compare(data, hash);
  }
}
