import { v4 as uuid } from "uuid";

export function requestContext(req: any, _res: any, next: any) {
  req.context = {
    requestId: uuid(),
    startTime: Date.now(),
  };

  next();
}
