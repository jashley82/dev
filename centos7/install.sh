#!/bin/bash

sudo yum update -y
sudo yum install -y wget

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo rpm -ivh epel-release-7-9.noarch.rpm
rm -f epel-release-7-9.noarch.rpm*

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

DOTFILES=".bashrc .vimrc .tmux.conf"

for i in $DOTFILES; do
    $(cp -r $i $HOME)
done

git config --global user.email 'ashley.joshua@gmail.com'
git config --global user.name 'josh'

git clone git@github.com:kien/ctrlp.vim.git vim/bundle/ctrlp.vim/
git clone git@github.com:gregsexton/MatchTag.git vim/bundle/MatchTag/
git clone git@github.com:scrooloose/nerdcommenter.git vim/bundle/nerdcommenter/
git clone git@github.com:scrooloose/nerdtree.git vim/bundle/nerdtree/
git clone git@github.com:python-mode/python-mode.git vim/bundle/python-mode/

mkdir $HOME/.vim
cp -r vim/* $HOME/.vim/
