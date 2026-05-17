#!/bin/bash

echo "Checking infrastructure drift..."

npx cdk diff || exit 1
