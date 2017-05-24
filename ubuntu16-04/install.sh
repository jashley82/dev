#!/bin/bash

apt install -y python python-pip

pip install -r requirements.txt 

cp .bashrc ~
cp .vimrc ~
cp .tmux.conf ~
cp -r .vim/ ~
