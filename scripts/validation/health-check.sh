#!/bin/bash

echo "Running health checks..."

curl -f http://localhost:3000/health || exit 1

echo "Health check passed"
