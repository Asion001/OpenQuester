import { OQMetadataStructure } from "domain/types/file/structures/OQMetadataStructure";
import { OQRoundStructure } from "domain/types/file/structures/OQRoundStructure";

/**
 * Top-level content structure
 *
 * This and child types are described in schema.json, any changes should be translated in there
 */
export interface OQContentStructure {
  metadata: OQMetadataStructure;
  rounds: OQRoundStructure[];
}
