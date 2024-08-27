import { OQMetadataStructure } from "./OQMetadataStructure";
import { OQRoundStructure } from "./OQRoundStructure";

/**
 * Top-level content structure
 */
export interface OQContentStructure {
  metadata: OQMetadataStructure;
  rounds: OQRoundStructure[];
}
