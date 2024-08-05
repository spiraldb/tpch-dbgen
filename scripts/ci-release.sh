#!/usr/bin/env bash

set -x

RELEASE="$1"
PLATFORM="$2"


OUTPUT_FILE=dbgen-${PLATFORM}-${RELEASE}.zip
echo "packaging ${OUTPUT_FILE}"

zip $OUTPUT_FILE dbgen

gh release upload "$RELEASE" "$OUTPUT_FILE"

echo "done"
