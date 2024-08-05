#!/usr/bin/env bash

set -x

RELEASE="$1"


OUTPUT_FILE=dbgen-${RELEASE}.zip
echo "packaging ${OUTPUT_FILE}"

zip $OUTPUT_FILE dbgen

gh release upload "$RELEASE" "$OUTPUT_FILE"

echo "done"
