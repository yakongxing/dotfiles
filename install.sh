#!/usr/bin/env bash
set -xe
# zsh
## install zinit
if [ ! -d ~/.zinit ];then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)" > /dev/null
	cp .zshrc .zsh_aliases .docker-aliases .p10k.zsh ~
fi

# vimrc
if [ ! -e ~/.vimrc ]; then
	cp .vimrc ~
fi

