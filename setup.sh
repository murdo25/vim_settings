#!/bin/bash
# This script will test if you have given a leap year or not.

echo "ARE YOU SURE YOU WANT TO DELETE YOUR .vimrc? ([Y/N] followed by [ENTER])"

read choice

if ( "$choice" == "Y" );  then
    rm ~/.vimrc;
fi

echo "pathogen setup"

if [ ! -d ~/.vim/autoload ]; then
  echo "made autoload"
  mkdir -p  ~/.vim/autoload
fi

if [ ! -d ~/.vim/bundle ]; then
  echo "made bundle"
  mkdir -p  ~/.vim/bundle
fi



if [ ! -d ~/.vim/autoload/pathogen.vim ]; then
  echo "pathogen downloading"
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

if [ ! -d ~/.vim/bundle/python-mode ]; then
  echo "adding python-mode"
  git clone --recurse-submodules https://github.com/python-mode/python-mode.git ~/.vim/bundle/python-mode
fi

if [ ! -d ~/.vim/bundle/vim-sensible ]; then
  echo "adding vim sensable"
  git clone https://tpope.io/vim/sensible.git ~/.vim/bundle/vim-sensible
fi


if [ ! -d .vimrc ]; then
  echo "make sure the good .vimrc is in this folder"
  echo "failed"
else
    cp .vimrc ~/.vimrc
fi


