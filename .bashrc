

export EDITOR=vi

alias d='ls -la --color=auto'

set -o vi

export PS1="\$? [\t] \u@\h:\w> "

command -v direnv &>/dev/null && eval "$(direnv hook bash)"

command -v terraform &>/dev/null && complete -C /usr/bin/terraform terraform
command -v nomad &>/dev/null && complete -C /usr/bin/nomad nomad
command -v nomad-pack &>/dev/null && complete -C /usr/bin/nomad-pack nomad-pack
command -v uv &>/dev/null && eval "$(uv generate-shell-completion bash)"
