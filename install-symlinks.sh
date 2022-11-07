#!/bin/bash

ln -s ".bashrc" "${HOME}/.bashrc"
ln -s ".bash_profile" ${HOME}/.bash_profile
ln -s "vim" .vim
ln -s ".vimrc" .vimrc

LOCAL_PROFILE=.bash_profile_linux
if [ $(uname -s) == "Darwin" ] ; then
  LOCAL_PROFILE=.bash_profile_mac
fi

ln -s ${LOCAL_PROFILE} ${HOME}/.bash_profile
