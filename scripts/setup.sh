#!/bin/bash
mkdir -p ~/.config/zsh
mkdir -p ~/.config/zsh/z
conf_dir=~
dir=$(cd $(dirname $0)/.. && pwd)
ln -s $dir/.zshrc $conf_dir/.zshrc
ln -s $dir/.zshenv $conf_dir/.zshenv

if [ "$(uname)" == 'Darwin' ]; then
  OS='OSX'
  ln -s $dir/.zshrc_osx $conf_dir/.zshrc_local
  ln -s $dir/.zshenv_osx $conf_dir/.zshenv_local

elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
  ln -s $dir/.zshrc_unix $conf_dir/.zshrc_local
  ln -s $dir/.zshenv_unix $conf_dir/.zshenv_local

elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
fi
