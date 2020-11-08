#!/usr/bin/env bash
# zsh
## install zinit
if [ ! -d ~/.zinit ];then
	echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
	cp .zshrc .zsh_aliases .docker-aliases .p10k.zsh ~
fi

# vimrc
if [ ! -e ~/.vimrc ]; then
	cp .vimrc ~
fi

