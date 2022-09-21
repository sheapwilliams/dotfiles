

export EDITOR=vi

alias d='ls -la --color'

set -o vi

export PS1="$? [\t] \u@\h:\w> "

eval "$(direnv hook bash)"
