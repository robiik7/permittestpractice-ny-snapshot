#!/usr/bin/env bash
# Remap links to new target domain

target="$TARGET_DOMAIN"
root="$OUTPUT_DIR"

find "$OUTPUT_DIR" -type f \( -name "*.html" -o -name "*.css" -o -name "*.js" \) \
  -exec sed -i '' 's~https://permittestpractice.com~https://'$target'~g' {} +

echo "Remapping complete. All links now point to https://$target"
