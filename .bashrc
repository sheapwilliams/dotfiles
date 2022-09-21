

export EDITOR=vi

alias d='ls -la --color'

set -o vi

export PS1="$? [\d/\t] \W> "

eval "$(direnv hook bash)"
