export function success(data: any) {
    return {
      status: "success",
      data,
      timestamp: new Date().toISOString(),
    };
}
