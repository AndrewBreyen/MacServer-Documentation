#!/bin/bash

# Run MkDocs build and capture output
build_output=$(mkdocs build 2>&1)

# Check if the build output contains any warnings or errors
if echo "$build_output" | grep -qE '(WARNING|ERROR)'; then
  echo "Build failed due to warnings or errors:"
  echo "$build_output" | grep -E '(WARNING|ERROR)' | sed 's/^/  /'
  exit 1
else
  echo "Build successful."
fi