#!/bin/bash

echo "Running lint checks..."

npm run lint

if [ $? -ne 0 ]; then
  echo "Lint failed"
  exit 1
fi

echo "Lint passed"
