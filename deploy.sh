#!/bin/bash

set -e


# check requirement
check_req() {
  for req in go python2-config git cmake ; do
    which $req &>/dev/null || { echo "Requirement $req is not met." && return 1 ; }
  done
  return 0
}

check_req || exit 1

install -d $HOME/.vim/{colors,bundle,autoload}
install vimrc $HOME/.vimrc
install ctags $HOME/.ctags
install tmux.conf $HOME/.tmux.conf
install molokai.vim $HOME/.vim/colors/molokai.vim

# Install PATH
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

PROJECT_BASE=$PWD
pushd $HOME/.vim/bundle
while read line; do
    git clone $line || true
done < ${PROJECT_BASE}/vim_plugins.txt
popd

pushd $HOME/.vim/bundle/YouCompleteMe
  git submodule update --init --recursive
  ./install.py --clang-completer --gocode-completer
popd


