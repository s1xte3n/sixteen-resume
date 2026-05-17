import { FeatureFlag } from "./types";

export const FLAGS: Record<FeatureFlag, boolean> = {
  enableNewApi: false,
  enableBetaUI: false,
  enableLoggingV2: true,
};
