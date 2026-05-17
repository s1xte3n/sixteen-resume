import { ENV } from "./env";
import { REQUIRED_ENV } from "./schema";

export function validateEnv() {
  for (const key of REQUIRED_ENV) {
    if (!process.env[key]) {
      throw new Error(`Missing env var: ${key}`);
    }
  }
  return ENV;
}
