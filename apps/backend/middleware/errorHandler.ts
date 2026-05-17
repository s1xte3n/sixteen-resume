import { AppError } from "../utils/errors";

export function errorHandler(err: any, _req: any, res: any, _next: any) {
  if (err instanceof AppError) {
    return res.status(err.statusCode).json({
      status: "error",
      code: err.code,
      message: err.message,
    });
  }

  return res.status(500).json({
    status: "error",
    code: "INTERNAL_ERROR",
    message: "Unexpected error",
  });
}
