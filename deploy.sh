#!/usr/bin/env bash
set -e
git submodule foreach git pull --recursive
stow neovim -t $HOME
