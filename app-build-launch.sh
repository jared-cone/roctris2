#!/usr/bin/env bash

# We don't want -e because we want to capture the exit status of the roc build command.
# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
#set -euxo pipefail

# roc build returns 2 for warnings
RET_WARNING=2

OUTPUT_DIR="./target"
OUTPUT_BIN="$OUTPUT_DIR/game-launch"
mkdir -p "$OUTPUT_DIR"

roc build --linker=legacy --output "$OUTPUT_BIN" ./game/launch.roc
ROC_BUILD_STATUS=$?

if [ $ROC_BUILD_STATUS -ne 0 ]; then
    if [ $ROC_BUILD_STATUS -ne 2 ]; then
        echo "Roc build failed."
        exit 1
    fi
    echo "Roc build had a warning."
else
    echo "Roc build success."
fi

echo ""
echo "Launching app..."

 "$OUTPUT_BIN"
