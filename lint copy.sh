#!/bin/bash

set -e

echo "##################"
echo "### Linting"
echo "##################"

if [[ "$1" == "-f" ]]; then
  echo "Linting and fixing markdown files"
  echo "### Prettier:"
  prettier --write --log-level=warn .

  echo "### Markdownlint:"
  markdownlint . --config .mdlrc . -f
else
  echo "Linting markdown files"
  echo "### Prettier:"
  prettier --list-different "docs/*.md" --log-level=warn

  echo "### Markdownlint:"
  markdownlint . --config .mdlrc .
fi
