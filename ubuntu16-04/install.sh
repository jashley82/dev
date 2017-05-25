#!/bin/bash

# apt and pip requirements 
# symlink dotfiles
# vim plugins

sudo apt install -y \
    python \
    python-pip \
    vim \
    tmux

pip install -r requirements.txt


DOTFILES=".bashrc .vim .vimrc .tmux.conf"

for i in $DOTFILES; do
    $(cp -r $i $HOME)
done
