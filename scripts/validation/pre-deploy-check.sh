#!/bin/bash

echo "Running pre-deployment validation..."

npm run lint || exit 1
npm run test || exit 1
npm run build || exit 1

echo "Validation passed"
