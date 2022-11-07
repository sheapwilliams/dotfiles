#!/bin/bash

ln -s "${HOME}/dotfiles/.bashrc" "${HOME}/.bashrc"
ln -s "${HOME}/dotfiles/.bash_profile" ${HOME}/.bash_profile
ln -s "${HOME}/dotfiles/vim" .vim
ln -s "${HOME}/dotfiles/.vimrc" .vimrc

LOCAL_PROFILE=${HOME}/dotfiles/.bash_profile_linux
if [ $(uname -s) == "Darwin" ] ; then
  LOCAL_PROFILE=.bash_profile_mac
fi

ln -s ${LOCAL_PROFILE} ${HOME}/.bash_profile
