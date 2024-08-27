import { OQMetadataStructure } from "./OQMetadataStructure";
import { OQRoundStructure } from "./OQRoundStructure";

export interface OQContentStructure {
  metadata: OQMetadataStructure;
  rounds: OQRoundStructure[];
}
