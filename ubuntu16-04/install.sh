#!/bin/bash

# apt and pip requirements 
# symlink dotfiles
# vim plugins

sudo apt install -y < packages.txt

pip install -r requirements.txt


DOTFILES=".bashrc .vim .vimrc .tmux.conf"

for i in $DOTFILES; do
    $(cp -r $i $HOME)
done
