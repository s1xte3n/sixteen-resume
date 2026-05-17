#!/bin/bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ "$BRANCH" == "main" ]]; then
  echo "Production branch detected"

  if grep -R "console.log" apps/backend; then
    echo "console.log found in backend (not allowed in prod)"
    exit 1
  fi
fi
