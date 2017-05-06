[ "`uname -s`" = Darwin ] || return

for gnubin in /usr/local/opt/*/libexec/gnubin; do
    export PATH="$gnubin:$PATH"
done

for gnuman in /usr/local/opt/*/libexec/gnuman; do
    export MANPATH="$gnuman:${MANPATH:-"`man --path`"}"
done
