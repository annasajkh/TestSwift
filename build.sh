#!/bin/bash

SOURCE_DIR="Assets"
TARGET_DIR=".build/release"

swift build -c release

mkdir -p "$TARGET_DIR/Assets"

cp -r "$SOURCE_DIR/"* "$TARGET_DIR/Assets/"