#!/usr/bin/env bash

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euxo pipefail

OUTPUT_DIR="./target"
OUTPUT_BIN="$OUTPUT_DIR/game-launch"
mkdir -p "$OUTPUT_DIR"
roc build --linker=legacy --output "$OUTPUT_BIN" ./game/launch.roc
"$OUTPUT_BIN"
