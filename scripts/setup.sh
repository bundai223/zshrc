#!/bin/sh
conf_dir=~/
dir=$(cd $(dirname $0)/../ && pwd)
ln -s $dir/.zshrc $conf_dir/.zshrc
ln -s $dir/.zshenv $conf_dir/.zshenv
