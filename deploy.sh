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
if [[ $stow == 1 ]]; then
	echo "gnu stow needs to be insalled for this program to run. exiting."
	exit 1
fi

#recurse submodules
git submodule update --init --recursive

need nvim
if [[ $nvim == 0 ]]; then
########
#neovim#
########
echo "starting deploy of vim config"
#vim-gnupg
git submodule sync vim-gnupg
git submodule set-branch --branch master vim-gnupg
#nvim-lspconfig
git submodule symc nvim-lspconfig
git submodule set-branch --branch master nvim-lspconfig
#compe
git submodule sync nvim-compe
git submodule set-branch --branch master nvim-compe
#
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
need alacritty
	if [[ $alacritty == 0 ]]; then
		need rofi
		if [[ $rofi == 0 ]]; then
			stow sway -t $HOME
		else
			echo "rofi not installed, and you need it for sway"
		fi
	else 
		echo "alacritty not installed, and you need it for sway"
		exit 1
	fi
else
	echo "skipping sway because it's not installed"
fi

###############
#shell scripts#
###############
echo "starting deploy of shell scripts"
git submodule sync zsh/.oh-my-zsh
git submodule set-branch --branch master zsh/.oh-my-zsh
stow scripts -t $HOME

#####
#zsh#
#####
echo "starting deploy of zshrc"
stow zsh -t $HOME
