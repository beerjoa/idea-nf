#!/bin/bash

# Instruction: This script is used to open a file or directory in the specified IDE.
# It will create the file or directory if it doesn't exist.
# Usage: inf <ide> "<file>" | inf <ide> "<directory>"
# Example: inf idea "src/main/java/com/example/MyClass.java" | inf code "src/main/java/com/example"

# Declare the first argument as the IDE.
IDE=$1
# Declare the second argument as the target file or directory.
TARGET=$2

# Check if the target IDE is valid.
## Currently, we accept IDE installed in "/usr/local/bin" only!
if [ ! -x "/usr/local/bin/$IDE" ]; then
  echo "$IDE - IDE could not be found"
  exit 1
fi

# Get the directory name to create the file in.
dir=$(dirname -- "$TARGET")

# If the directory doesn't exist, make it.
if [ ! -d "$dir" ]; then
  mkdir -p "$dir"
fi

# If the file doesn't exist, create it.
if [ ! -f "$TARGET" ]; then
  touch "$TARGET"
fi

# Open the file in the specified IDE.
"$(command -v $IDE)" "$TARGET"