<p align="center">
  <a href="" target="blank">
    <img src="https://github.com/beerjoa/idea-nf/blob/main/assets/idea-nf-logo.png" width="128" alt="Idea-nf Logo" />
  </a>
</p>

<h1 align="center">
  Idea-nf
</h1>

<div align="center">
  <p>
    <a href="https://github.com/beerjoa/idea-nf/issues/" target="_blank">
      <img src="https://img.shields.io/github/issues/beerjoa/idea-nf" alt="GitHub issues" />
    </a>
    <a href="https://github.com/beerjoa/idea-nf/commit/main/" target="_blank">
      <img src="https://img.shields.io/github/last-commit/beerjoa/idea-nf" alt="GitHub last commit" />
    </a>
    <img src="https://img.shields.io/github/languages/top/beerjoa/idea-nf" alt="GitHub top language" />
  </p>
  <p>
    <img src="https://img.shields.io/badge/IntelliJIDEA-1f425f?style=flat-square&logo=IntelliJIDEA&logoColor=white" alt="IntelliJ IDEA" />
    <img src="https://img.shields.io/badge/Bash-121011?style=flat-square&logo=GNUBash&logoColor=white" alt="Bash" />
  </p>
</div>

# Introduction
Idea-nf is a script that creates the file using CLI in IntelliJ Idea IDE.

### idea-nf.sh
```bash
#!/bin/bash

# Open a file in IntelliJ IDEA, creating it if it doesn't exist.
# Usage: idea-nf <file>
# Example: idea-nf src/main/java/com/example/MyClass.java

# Declare the first argument as the target file.
TARGET_FILE=$1

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
/usr/local/bin/idea "$TARGET_FILE"
```

# Installation
```bash
$ git clone
$ cd idea-nf
$ sudo chmod 755 idea-nf.sh
$ sudo cp idea-nf.sh /usr/local/bin/idea-nf
```

# Usage
```bash
$ idea-nf [file name]
```
