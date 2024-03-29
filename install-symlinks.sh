#!/bin/bash

mv ~/.bashrc ~/.bashrc.orig

ln -s "${PWD}/.bashrc" "${HOME}/.bashrc"
ln -s "${PWD}/.bash_profile" ${HOME}/.bash_profile
ln -s "${PWD}/vim" "${HOME}/.vim"
ln -s "${PWD}/.vimrc" "${HOME}/.vimrc"
ln -s "${PWD}/.gitconfig" "${HOME}/.gitconfig"
ln -s "${PWD}/.tmux.conf" "${HOME}/.tmux.conf"
ln -s "${PWD}/.tmux-local.conf" "${HOME}/.tmux-local.conf"

LOCAL_PROFILE=.bash_profile_linux
if [ $(uname -s) == "Darwin" ] ; then
  LOCAL_PROFILE=.bash_profile_mac
fi

ln -s "${PWD}/${LOCAL_PROFILE}" ${HOME}/.bash_profile_local
