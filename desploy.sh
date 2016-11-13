#!/bin/bash

set -e

install -d $HOME/.vim/bundle
install -d $HOME/.vim/colors
install vimrc $HOME/.vimrc
install ctags $HOME/.ctags
install tmux.conf $HOME/.tmux.conf
install molokai.vim $HOME/.vim/colors/molokai.vim

PROJECT_BASE=$PWD
pushd $HOME/.vim/bundle
while read line; do
    git clone $line || true
done < ${PROJECT_BASE}/vim_plugins.txt
popd

pushd $HOME/.vim/bundle/YouCompleteMe
  git submodule update --init --recursive
  ./install.py --clang-completer
popd


