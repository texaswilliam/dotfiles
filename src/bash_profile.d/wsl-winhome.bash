[[ "`uname -r`" =~ (Microsoft|microsoft-standard-WSL2)$ ]] || return 0

win () { cd "$USERPROFILE"'/'"$*"; }
export -f win
