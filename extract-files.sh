#!/bin/bash
set -e
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

FILES=(
    "proprietary/product/priv-app/MIUIGalleryGlobal/MIUIGalleryGlobal.apk"
)

for FILE in "${FILES[@]}"; do
    DEST_DIR="vendor/xiaomi/hyperos-gallery/$(dirname "$FILE")"
    mkdir -p "$DEST_DIR"
    cp "$MY_DIR/$FILE" "$DEST_DIR/"
done
