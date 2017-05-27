#!/bin/bash

# yum and pip requirements 
# symlink dotfiles
# vim plugins


sudo yum update -y
sudo yum install -y wget

## RHEL/CentOS 7 64-Bit ##
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo rpm -ivh epel-release-7-9.noarch.rpm

sudo yum update -y
sudo yum install -y \
    python \
    python-pip \
    vim \
    tmux

sudo pip install -r requirements.txt


DOTFILES=".bashrc .vim .vimrc .tmux.conf"

for i in $DOTFILES; do
    $(cp -r $i $HOME)
done
