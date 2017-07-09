#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y \
    fontconfig \
    python \
    python-pip \
    vim \
    tmux

sudo pip install -r requirements.txt

sudo cp PowerlineSymbols.otf /usr/share/fonts/
sudo cp 10-powerline-symbols.conf /etc/fonts/conf.d/
sudo fc-cache -vf

DOTFILES=".bashrc .vim .vimrc .tmux.conf"

for i in $DOTFILES; do
    $(cp -r $i $HOME)
done
