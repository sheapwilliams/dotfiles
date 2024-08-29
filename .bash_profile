
if [[ -f "${HOME}/.bash_profile_local" ]] ; then
  source "${HOME}/.bash_profile_local"
fi

if [[ $- =~ i ]] ; then
  source "${HOME}/.bashrc"
fi

export PATH=$PATH:~/.local/bin
