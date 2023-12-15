# home dir bin path
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# theme
ZSH_THEME="risto"
# autocorrect around hyphens and underscores
HYPHEN_INSENSITIVE="true"
# fix pasting on weirdo linux
DISABLE_MAGIC_FUNCTIONS="true"

# plugins
ZSH_CUSTOM="$HOME/.config/zsh-custom"
plugins=(git
	zsh-autosuggestions)

# basic oh-my-zsh boilerplate
source $ZSH/oh-my-zsh.sh

# no idea what this is, but It's been in here for ages, so it's probably fine
set enable bracketed-paste on

#local conifgs
source $HOME/.zlocal

##go setup stuff
if (( $+commands[go] ))
then
	export GOPATH="$HOME/go"
	export PATH="$GOPATH/bin:$PATH"
fi

# exa is better than ls because of the colors
alias l='exa -la'
alias tree='exa --tree'
# the only editor that matters
export EDITOR=`which nvim`

