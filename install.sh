#!bin/bash

git clone --recursive git@github.com:thenno/VimConfig.git ~/.vim

ln -s ln -s ~/.vim/vimrc ~/.vimrc

cd ~/.vim/bundle/Vundle.vim
git checkout master

cd ~/.vim/bundle/vim-pathogen
git checkout master
