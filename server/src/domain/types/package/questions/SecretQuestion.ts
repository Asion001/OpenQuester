/**
 * Not used, but left there for reference
 */
export interface SecretQuestion {
  type: "secret";
  subType: "simple" | "customPrice";
  allowedPrices?: number[]; // Only if type is customPrice, maximum 5 prices to choose
  transferType: "any" | "exceptCurrent";
}
