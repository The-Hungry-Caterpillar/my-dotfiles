#!/bin/bash

HERE=${PWD}
[[ -f ~/.vimrc ]] && cp ~/.vimrc ~/.vimrc_backup
[[ -d ~/.vim_runtime ]] && rm -rf ~/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime
echo ${HERE}
rm -rf my_plugins vimrcs
ln -s ${HERE}/my_plugins my_plugins
ln -s ${HERE}/vimrcs vimrcs
