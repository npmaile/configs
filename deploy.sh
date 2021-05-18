#!/usr/bin/env bash
function need(){
	local __resultvar=$1
	if command $1 --version &> /dev/null
	then
		eval $__resultvar='0'
	else
		eval $__resultvar='1'
	fi
}

need stow
if [[ $stow ==1 ]]; then
	echo "gnu stow needs to be insalled for this program to run. exiting."
	exit 1
fi

need nvim
if [[ $nvim == 0 ]]; then
########
#neovim#
########
echo "starting deploy of vim config"
#vim-go
git submodule sync neovim/.local/share/nvim/site/pack/go/start/vim-go
git submodule set-branch --branch v1.25 neovim/.local/share/nvim/site/pack/go/start/vim-go
#vim-gnupg
git submodule sync neovim/.local/share/nvim/site/pack/gnupg/start/vim-gnupg
git submodule set-branch --branch master neovim/.local/share/nvim/site/pack/gnupg/start/vim-gnupg
#stow it
stow neovim -t $HOME
else
	echo "skipping neovim because nvim cannot be found"
fi

need alacritty
if [[ $alacritty == 0 ]]; then
###########
#alacritty#
###########
echo "starting deploy of alacritty conifg"
#stow it
stow alacritty -t $HOME
else
	echo "skipping alacritty because alacritty cannot be found"
fi

need sway
if [[ $sway == 0 ]]; then
######
#sway#
######
echo "starting deploy of sway config"
#stow it
stow sway -t $HOME
fi
