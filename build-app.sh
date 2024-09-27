#!/bin/bash

APP_ROC="app/test.roc"
STUB_LIB="platform/libapp.so"
CONFIG="release"
TARGET_FOLDER="target/$CONFIG"
HOST_BIN_SOURCE="$TARGET_FOLDER/host"
HOST_LIB_SOURCE="$TARGET_FOLDER/libhost.a"
HOST_LIB_DEST="platform/linux-x64.a"

# build the stub
roc build --lib "$APP_ROC" --output "$STUB_LIB" --optimize

# build the platform
cargo build --$CONFIG

# copy the host binary
# TODO is this necessary? Nothing seems to complain if we skip this step
cp "$HOST_LIB_SOURCE" "$HOST_LIB_DEST"

# surgical linker
roc preprocess-host "$HOST_BIN_SOURCE" "$APP_ROC" "$STUB_LIB"

#roc build --linker=legacy --prebuilt-platform "$APP_ROC"
