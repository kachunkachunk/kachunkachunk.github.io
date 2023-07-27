#!/bin/bash

# Original script/use case, from techno-tim.github.io:
#   #!/usr/bin/env bash
#   #you'll need webp installed
#   for file in images/*; do cwebp "$file" -o "${file%.*}.webp"; done
#
#   #convert single
#   cwebp images/flower.jpg -o images/flower.webp

# Check if cwebp is installed
check_cwebp_installed() {
  if ! command -v cwebp &> /dev/null; then
    echo "Error: cwebp is not installed. Please install the WebP utilities package first."
    exit 1
  fi
}
check_cwebp_installed

# Convert images in current directory to WebP:
for img in *.jpg *.jpeg *.png *.gif; do
  if [ -f "$img" ]; then
    output="${img%.*}.webp"
    cwebp -q 80 "$img" -o "$output"
    echo "Converted $img to $output"
  fi
done

echo "Image conversion complete."