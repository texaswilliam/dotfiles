if [ "$CLICOLOR" = 1 ]; then
    PS1='\[\e[0;34m\]\u\[\e[0m\]@\[\e[36m\]\h\[\e[0m\]:\[\e[37m\]\w\[\e[31m\]$(__git_ps1 %s)\[\e[0m\]?\[\e[$(($? == 0 ? 32 : 31))m\]$?\[\e[0m\]\$ '
else
    PS1='\[\e[0m\]\u@\h:\w$(__git_ps1 %s)?$?\$ '
fi

export PS1
