#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install secretive
brew install bash-completion llvm tree tmux ninja go cmake direnv clang-format tig python@3.12
brew install vim

