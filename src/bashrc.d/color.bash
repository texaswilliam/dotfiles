[ "$CLICOLOR" = 1 ] || return

whether colordiff && alias diff='colordiff'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto --file-type'
