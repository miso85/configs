export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[33;1m\] \w: \[\e[35;1m\]\`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\\\\\*\ \(.+\)$/\(\\\\\\\\\1\)\/\`\[\033[0m\]$\[\033[0m\] "

alias ls='ls -GFh'
alias ll='ls -l'
alias grep='grep --color=auto'
