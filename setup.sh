#!/bin/bash
# This script will test if you have given a leap year or not.

echo "ARE YOU SURE YOU WANT TO DELETE YOUR .vimrc? ([Y/N] followed by [ENTER])"

read choice

if ( "$choice" == "Y" );  then
    rm ~/.vimrc
fi

echo "pathogen setup"
mkdir -p ~/.vim/autoload ~/.vim/bundle # && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "adding python-mode"
git clone --recurse-submodules https://github.com/python-mode/python-mode.git ~/.vim/bundle

echo "adding vim sensable"
git clone https://tpope.io/vim/sensible.git ~/.vim/bundle


echo "make sure the good .vimrc is in this folder"
cp .vimrc ~/.vimrc
