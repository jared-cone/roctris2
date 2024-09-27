#!/bin/bash

APP_ROC="app/test.roc"
STUB_LIB="platform/libapp.so"
CONFIG="release"
TARGET_FOLDER="target/$CONFIG"
HOST_BIN_SOURCE="$TARGET_FOLDER/host"
HOST_LIB_SOURCE="$TARGET_FOLDER/libhost.a"
HOST_LIB_DEST="platform/linux-x64.a"

# Build the stub lib.
roc build --lib "$APP_ROC" --output "$STUB_LIB" --optimize

# Build the platform.
cargo build --$CONFIG

# Copy the host binary. This is only necessary for legacy linker?
cp "$HOST_LIB_SOURCE" "$HOST_LIB_DEST"

# Surgical linker.
roc preprocess-host "$HOST_BIN_SOURCE" "$APP_ROC" "$STUB_LIB"

# Build the app
roc build app/test.roc
