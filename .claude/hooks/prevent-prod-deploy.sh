#!/bin/bash

COMMAND="$1"

if [[ "$COMMAND" == *"--force"* ]]; then
  echo "Force push blocked"
  exit 1
fi

if [[ "$COMMAND" == *"reset --hard"* ]]; then
  echo "Dangerous reset blocked"
  exit 1
fi
