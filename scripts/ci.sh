#!/usr/bin/env bash

set -x

# Generate the git version
GIT_VERSION=`git describe --tags --long --dirty`
GIT_IS_RELEASE=$(echo $GIT_VERSION | grep -E '-')

echo "making dbgen..."
make dbgen

if [[ "${GIT_IS_RELEASE}x" = "x" ]]; then
	exit 0
fi

OUTPUT_FILE=dbgen-${GIT_VERSION}.zip
echo "packaging ${OUTPUT_FILE}"

zip $OUTPUT_FILE dbgen

echo "done"
