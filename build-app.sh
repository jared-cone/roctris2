#!/bin/bash

APP_ROC="app/test.roc"
CONFIG="release"
TARGET_FOLDER="target/$CONFIG"
HOST_LIB_SOURCE="$TARGET_FOLDER/libhost.a"
HOST_LIB_DEST="platform/linux-x64.a"

# Build the platform.
cargo build --$CONFIG

# Copy the host binary. This is only necessary for legacy linker?
cp "$HOST_LIB_SOURCE" "$HOST_LIB_DEST"

# Surgical linker.
roc preprocess-host "$HOST_BIN_SOURCE" "$APP_ROC" "$STUB_LIB"

# Build the app
roc build app/test.roc
