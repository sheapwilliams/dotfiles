
if [[ -f ".bash_profile_local" ]] ; then
  source .bash_profile_local
fi

source ~/.bashrc

export PATH=$PATH:~/.local/bin
