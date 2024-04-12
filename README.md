<p align="center">
  <a href="" target="blank">
    <img src="https://github.com/beerjoa/inf/blob/main/assets/inf-logo.png" width="128" alt="Inf Logo" />
  </a>
</p>

<h1 align="center">
  Inf
</h1>

<div align="center">
  <p>
    <a href="https://github.com/beerjoa/inf/issues/" target="_blank">
      <img src="https://img.shields.io/github/issues/beerjoa/inf" alt="GitHub issues" />
    </a>
    <a href="https://github.com/beerjoa/inf/commit/main/" target="_blank">
      <img src="https://img.shields.io/github/last-commit/beerjoa/inf" alt="GitHub last commit" />
    </a>
    <img src="https://img.shields.io/github/languages/top/beerjoa/inf" alt="GitHub top language" />
  </p>
  <p>
    <a href="https://www.jetbrains.com/help/idea/getting-started.html" target="_blank">
      <img src="https://img.shields.io/badge/IntelliJIDEA-1f425f?style=flat-square&logo=IntelliJIDEA&logoColor=white" alt="IntelliJ IDEA" />
    </a>
    <a href="https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html" target="_blank">
      <img src="https://img.shields.io/badge/Bash-121011?style=flat-square&logo=GNUBash&logoColor=white" alt="Bash" />
    </a>
  </p>
</div>

# Introduction
I(DE)nf is a script that creates the file using CLI in some IDEs.

### inf.sh
```bash
#!/bin/bash

# Open a file in your Specified IDE, create the file if it doesn't exist.
# Usage: inf <ide> "<file>"
# Example: inf idea "src/main/java/com/example/MyClass.java"

# Declare the first argument as the target IDE.
TARGET_IDE=$1
# Declare the second argument as the target file.
TARGET_FILE=$2

# Check if the target IDE is valid.
## Currently, we accept IDE installed in "/usr/local/bin" only!
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

# Open the file in the specified IDE.
"$(command -v $TARGET_IDE)" "$TARGET_FILE"
```

# Installation
Before installing it, please check that the 'inf' command already exists.
```bash
$ command -v inf || echo "Not exist"

# if the 'inf' command doesn't exist, you can install it.
$ git clone
$ cd inf
$ sudo chmod 755 inf.sh
$ sudo cp inf.sh /usr/local/bin/inf
```

# Usage
```bash
# default usage
$ inf [ide] "[file name]"

# Also you can use the alias in your shell configuration file. (e.g. .bashrc, .zshrc)
$ alias infi="inf idea"
$ alias infc="inf code"
```
