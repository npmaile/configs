# Configs

Everyone has them. Some are better than others. This set is the best.

## Background

This config set is made specifically for my [Arch Linux](https://archlinux.org) configuration.
I also set it up to only deploy configurations for installed programs in case it's run on a MacOS install for vim and Alacritty.
It works perfectly for my perfect use cases , but likely you aren't as perfect as me and would want to make changes to it.
Feel free to do so.

## Prerequisites

### Arch Linux

installing on Archlinux, you will want to first run the following command:
```sh
sudo pacman -S zsh sway neovim stow alacritty rofi ttf-hack-nerd exa`
```
You'll also want to change the shell for your user to zsh

Additionally, it assumes you have [papeChanger](https://github.com/npmaile/papeChanger) installed and configured to run against a directory of wallpapers.
At the time of writing this is a personal project of mine that's not quiiiiite finished, and will eventually come with default wallpapers to help.
For the time being, you will be best off slightly modifying your sway config to set the wallpaper some other way.

### MacOS

For MacOS, this mostly only works for zsh, alacritty, and neovim.
To install the prerequisites, you'll want to run the following command:
```sh
brew tap homebrew/cask-fonts && brew install neovim alacritty font-hack-nerd-font exa`
```

## Installation

run
```sh
./deploy.sh
```
It will only install configurations for installed applications.

## Manual

Most of this stuff is going to be apparent once you see it in action. I'm only going to document the non-obvious parts

### Zsh

- adds a `~/bin` directory to `$PATH` for easy addition of your own scripts
- adds an alias `l` to run the exa application (it's basically just a better ls)
- adds an alias `tree` that calls exa to generate a directory tree
- allows for case and dash insensitive command line completions

### Neovim

- sets up [lsp](https://microsoft.github.io/language-server-protocol/) with [mason](https://github.com/williamboman/mason.nvim) for easy configuration
- sets up fairly standard keybindings for triggering lsp functionality (please look at the neovim configuration specifically lsp.lua for specifics)
    - You can install lsp servers for filetypes you don't have them for by running `LspInstall` from inside a file of that type. You will need to close and restart neovim for the change to work. If it isn't working, you can open up a file of lsp logs by running LspLog.
- sets the leader key to `,`
- maps `<leader>` h/j/k/l to switch between windows open in the current tab
- maps arrow keys to resize windows
- adds `<leader>f` and `<leader>e` to quickly start the `find` and `edit` commands respecively
- turns on mouse support
- turns on recursive search on the `find` command
- uses the system clipboard as the yank buffer (for copying out of and pasting into neovim)
- adds treesitter highlighting (run TSInstall all if you want everything to automagically get really good syntax highlighting)
