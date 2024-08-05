#!/usr/bin/env bash

set -x

RELEASE="$1"
PLATFORM="$2"


OUTPUT_FILE=dbgen-${PLATFORM}-${RELEASE}.tar
echo "packaging ${OUTPUT_FILE}"

tar cvf $OUTPUT_FILE dbgen dists.dss

gh release upload "$RELEASE" "$OUTPUT_FILE"

echo "done"
