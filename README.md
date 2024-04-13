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

you can check the script details in **[inf.sh](/inf.sh)**

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
$ inf [ide] "[file]" | "[directory]"

# Also you can use the alias in your shell configuration file. (e.g. .bashrc, .zshrc)
$ alias infi="inf idea"
$ alias infc="inf code"
```
