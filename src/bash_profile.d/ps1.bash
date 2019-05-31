if whether tput; then
    sgr0="$(tput sgr0)"
    bold="$(tput bold)"
    [ "$CLICOLOR" = 1 ] && for ((i = 0; i <= 7; ++i)); do setaf[$i]="$(tput setaf $i)"; done
else
    sgr0="\e[m"
    bold="\e[1m"
    [ "$CLICOLOR" = 1 ] && for ((i = 0; i <= 7; ++i)); do setaf[$i]="\e[3${i}m"; done
fi

PROMPT_COMMAND='[ $? = 0 ] && PS1_RETVALCOLOR='${setaf[2]@Q}' || PS1_RETVALCOLOR='${setaf[1]@Q}
PS1='\['$sgr0$bold${setaf[4]}'\]\u\['$sgr0'\]@\['$bold${setaf[6]}'\]\h\['$sgr0'\]:\['$bold${setaf[7]}'\]\w\['${setaf[1]}'\]$(__git_ps1 %s)\['$sgr0'\]?\['$bold'$PS1_RETVALCOLOR\]$?\['$sgr0'\]\$ '

export PROMPT_COMMAND PS1
