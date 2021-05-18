#!/usr/bin/env bash
set -e
########
#neovim#
########
#vim-go
git submodule sync neovim/.local/share/nvim/site/pack/go/start/vim-go
git submodule set-branch --branch v1.25 neovim/.local/share/nvim/site/pack/go/start/vim-go
#vim-gnupg
git submodule sync neovim/.local/share/nvim/site/pack/gnupg/start/vim-gnupg
git submodule set-branch --branch master neovim/.local/share/nvim/site/pack/gnupg/start/vim-gnupg
#stow it
stow neovim -t $HOME

###########
#alacritty#
###########
#stow it
stow alacritty -t $HOME
