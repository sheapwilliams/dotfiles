
if [[ -f "${HOME}/.bash_profile_local" ]] ; then
  source "${HOME}/.bash_profile_local"
fi

if [[ $- =~ i ]] ; then
  source "${HOME}/.bashrc"
fi

export PATH=$PATH:~/.local/bin

# Git autocompletions
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Docker autocompletions
if [ -f ~/.docker-completion.bash ]; then
    . ~/.docker-completion.bash
fi
