#!/bin/bash

# yum and pip requirements 
# symlink dotfiles
# vim plugins


sudo yum install -y wget

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo rpm -ivh epel-release-7-9.noarch.rpm
rm -f epel-release-7-9.noarch.rpm*

sudo yum update -y
sudo yum install -y \
    fontconfig \
    git \
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
