#!/bin/bash


### THIS STILL NEEDS TO BE TESTED!!!
# - [] MacOS
# - [] Linux
# - [] WSL

echo "enter 'mac' or 'linux'"
read ${OS}
if [[ ${OS} != 'mac' && ${OS} != 'linux' ]]; then
    echo "must enter 'mac' or 'linux'"
    exit 1
fi

echo "you want alacritty?"
read ${ALA}
if [[ ${ALA} != 'yes' && ${ALA} != 'no' ]]; then
    echo "must enter 'yes' or 'no'"
    exit 1
fi

HERE=${PWD}

cd ${HOME}

# make backups if currently exist
[[ -d .vim_runtime ]] && mv .vim_runtime .vim_runtime-backup
[[ -d .oh-my-bash ]] && mv .oh-my-bash .oh-my-bash-backup
[[ -f .tmux.conf ]] && mv .tmux.conf .tmux.conf-backup

# make soft links
ln -s ${PWD}/vim_runtime .vim_runtime
ln -s ${PWD}/oh-my-bash .oh-my-bash
ln -s ${PWD}/tmux/tmux.conf ./.tmux.conf
# make soft link depending on OS
if [[ ${OS} == 'mac' ]]; then
    [[ -f .bash_profile ]] && mv .bash_profile .bash_profile-backup
    ln -s ${PWD}/oh-my-bash/bash_profile .bash_profile
else
    [[ -f .bashrc ]] && mv .bashrc .bashrc-backup
    ln -s ${PWD}/oh-my-bash/bash_profile .bashrc
fi
# alacritty
[[ ${ALA} == 'yes' ]] && \
    mkdir -p .config && \
    cd .config && \
    ln -s ${PWD}/alacritty/ alacritty &&
    cd ..

# install vim runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# go back
cd ${PWD}
