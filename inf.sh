#!/bin/bash

# Open a file in IntelliJ IDEA, creating it if it doesn't exist.
# Usage: idea-nf <file>
# Example: idea-nf src/main/java/com/example/MyClass.java

# Declare the first argument as the target file.
TARGET_IDE=$1
TARGET_FILE=$2

if [ ! -x "/usr/local/bin/$TARGET_IDE" ]; then
  echo "$TARGET_IDE - IDE could not be found"
  exit 1
fi

# Get the directory name to create the file in.
dir=$(dirname -- "$TARGET_FILE")

# If the directory doesn't exist, create it.
if [ ! -d "$dir" ]; then
  mkdir -p "$dir"
fi

# If the file doesn't exist, create it.
if [ ! -f "$TARGET_FILE" ]; then
  touch "$TARGET_FILE"
fi

# Open the file in IntelliJ IDEA.
"$(command -v $TARGET_IDE)" "$TARGET_FILE"

