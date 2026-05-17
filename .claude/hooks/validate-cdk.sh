#!/bin/bash

echo "Synthesizing CDK..."

npx cdk synth || exit 1

echo "CDK synthesis passed"
