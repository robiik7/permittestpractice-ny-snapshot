#!/usr/bin/env bash

# Variables (can be overridden by ENV vars)
SOURCE_URL="https://permittestpractice.com/new-york"
OUTPUT_DIR="./permittestpractice_ny"
TARGET_DOMAIN="mydmvapp2025.co"

# Clean previous output
rm -rf "$OUTPUT_DIR"

# Mirror command with wget
wget \
  --mirror \
  --no-parent \
  --convert-links \
  --adjust-extension \
  --page-requisites \
  --span-hosts \
  --domains=permittestpractice.com \
  --include-directories=/new-york \
  -P "$OUTPUT_DIR" \
  "$SOURCE_URL"
