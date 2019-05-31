[ "`uname -s`" = Darwin ] || return 0

for gnubin in /usr/local/opt/*/libexec/gnubin; do PATH="$gnubin:$PATH"; done
for gnuman in /usr/local/opt/*/libexec/gnuman; do MANPATH="$gnuman:$MANPATH"; done
export MANPATH PATH
