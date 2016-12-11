#!/bin/bash
conf_dir=~/
dir=$(cd $(dirname $0)/../ && pwd)
ln -s $dir/.zshrc $conf_dir/.zshrc
ln -s $dir/.zshenv $conf_dir/.zshenv

if [ "$(uname)" == 'Darwin' ]; then
  ln -s $dir/.zshrc_osx $conf_dir/.zshrc_local
  ln -s $dir/.zshenv_osx $conf_dir/.zshenv_local

elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
fi
