#!/bin/bash

echo "Scanning for secrets..."

if grep -R "AWS_SECRET_ACCESS_KEY" .; then
  echo "Secret detected"
  exit 1
fi

echo "No secrets detected"
