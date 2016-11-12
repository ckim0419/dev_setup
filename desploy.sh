#!/bin/bash

set -e

install vimrc $HOME/.vimrc
install ctags $HOME/.ctags
install tmux.conf $HOME/.tmux.conf
install -d $HOME/.vim/bundle

pushd $HOME/.vim/bundle
while read line; do
    git clone $line
done < vim_plugins.txt
popd
