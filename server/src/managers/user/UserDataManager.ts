import Joi from "joi";

import { IInputUserData } from "../../interfaces/user/IInputUserData";
import { ValueUtils } from "../../utils/ValueUtils";

export class UserDataManager {
  protected _userData?: IInputUserData;
  protected _schema: Joi.ObjectSchema<any>;
  protected _required?: string[];

  constructor() {
    this._schema = Joi.object({
      id: Joi.number(),
      login: Joi.alternatives().try(
        Joi.string().min(3).max(30),
        Joi.string().email()
      ),
      name: Joi.string().min(3).max(30),
      email: Joi.string().email(),
      password: Joi.string().min(6).max(40),
      birthday: Joi.alternatives().try(Joi.date(), Joi.string()),
      permissions: Joi.array(),
    });
    this._required = [];
  }

  /**
   * Validates if manager instance have all required fields.
   *
   * By default it's called in `validate()`
   */
  public validateFields() {
    if (!this._required?.length) {
      return;
    }

    const r: string[] = [];
    for (const entry of Object.entries(this._userData!)) {
      if (this._required.includes(entry[0])) {
        const value = this._userData![entry[0] as keyof IInputUserData];
        if (ValueUtils.isBad(value) || ValueUtils.isEmpty(value)) {
          r.push(entry[0]);
        }
      }
    }
    if (r.length > 0) {
      throw new Error(`[${[...r]}] field(s) is required`);
    }
  }

  /**
   * Validates manager user data using validation schema
   */
  public validate() {
    if (
      !this._userData ||
      !ValueUtils.isObject(this._userData) ||
      ValueUtils.isEmpty(this._userData)
    ) {
      throw new Error("No user data provided.");
    }

    this.validateFields();

    if (!this._schema) {
      throw new Error("No validation schema.");
    }

    const { value, error } = this._schema.validate(this._userData, {
      allowUnknown: false,
      stripUnknown: true,
    });

    // TODO: Validate avatar field when implemented

    if (error) {
      throw new Error(`Validation error: ${error.message}`);
    }

    return value;
  }

  public get data() {
    return this._userData;
  }
}
