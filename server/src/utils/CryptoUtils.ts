import bcrypt from "bcryptjs";
import { Crypto } from "../types/Crypto";

export class CryptoUtils {
  public static async hash(
    data: string,
    salt: string | number,
    crypto?: Crypto
  ) {
    crypto = crypto ?? bcrypt;
    return crypto.hash(data as string, salt);
  }

  public static async compare(data: string, hash: string, crypto?: Crypto) {
    crypto = crypto ?? bcrypt;
    return crypto.compare(data, hash);
  }
}
