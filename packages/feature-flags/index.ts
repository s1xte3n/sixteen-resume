import { FLAGS } from "./flags";
import { FeatureFlag } from "./types";

export function isEnabled(flag: FeatureFlag): boolean {
  return FLAGS[flag];
}
