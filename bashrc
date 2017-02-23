shopt -s checkwinsize globstar

function whether { command -v -- "$@" > /dev/null; }

alias ash='docker pull alpine > /dev/null && docker run -it --rm alpine ash'
whether colordiff && alias diff='colordiff'
alias ls='ls --color=auto --file-type'

if [ "`uname -s`" = Darwin ]; then
    alias chrome='open -a Google\ Chrome'
    export BROWSER='open -a Google\ Chrome'
    if [ -d /usr/local/opt/coreutils ]; then
        PATH=/usr/local/opt/coreutils/libexec/gnubin:"$PATH"
        MANPATH="/usr/local/opt/coreutils/libexec/gnuman:${MANPATH:-`man --path`}"
    fi
fi

[ -d ~/bin ] && PATH="~/bin:$PATH"

export MANPATH PATH

whether dircolors && eval "`dircolors -b`"

export CLICOLOR=1
export EDITOR='vim'
export HOMEBREW_GITHUB_API_TOKEN='b23d321e4eeed919c16c8abe556e55a1e51310fb'
export LANG='en_US.UTF-8'
export LANGUAGE="$LANG"
export LC_ALL="$LANG"
export LESS='R'
export LESSHISTFILE='/dev/null'
export PAGER='less'
export PS1='\[\e[0;34m\]\u@\h\[\e[0m\]:\[\e[36m\]\w$(__git_ps1 '\''\[\e[31m\]%s'\'')\[\e[0m\]?$?\$ '

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if whether fortune; then
    echo
    fortune
    echo
fi
