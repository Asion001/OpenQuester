import path from "path";
import fs from "fs";

import { ValueUtils } from "../../utils/ValueUtils";
import { Language, Translation } from "../../types/text/translation";
import { Logger } from "../../utils/Logger";

/**
 * Static service that handles translations from `storage/language/*.json` files by translation key
 */
export class TranslateService {
  private static _translationsPath = path.join(
    process.cwd(),
    "storage/language"
  );

  private static _translationsMap = new Map<Language, Translation>();

  /**
   * Loads a translation file for a given language.
   */
  private static _loadTranslation(language: Language): Translation | null {
    const existing = this._translationsMap.get(language);
    if (!ValueUtils.isBad(existing) && !ValueUtils.isEmpty(existing)) {
      return existing;
    }

    try {
      const filePath = path.join(this._translationsPath, `${language}.json`);
      if (fs.existsSync(filePath)) {
        const translation = JSON.parse(fs.readFileSync(filePath, "utf8"));
        this._translationsMap.set(language, translation);
        return translation;
      }
    } catch (error) {
      Logger.error(
        `Error loading translation for language: ${language}: ${error}`
      );
    }

    return null;
  }

  /**
   * Translates text with a given language by its translationKey
   * or returns English translation (default).
   * If no value by key is found, the key will be returned.
   */
  public static translate(translationKey: string, language?: Language): string {
    const selectedLang = language ?? "en";
    const translation =
      this._loadTranslation(selectedLang) ?? this._loadTranslation("en");

    if (!translation) {
      Logger.warn(
        `Translation for language '${selectedLang}' not found. Returning key.`
      );
      return translationKey;
    }

    return translation[translationKey] ?? translationKey;
  }

  /**
   * Parse "Accept-Language" header to get the first preferred language.
   */
  public static parseHeader(acceptLangHeader: string | undefined): string {
    if (!acceptLangHeader) {
      return "en";
    }
    return acceptLangHeader.split(",")[0].split(";")[0].split("-")[0];
  }
}
