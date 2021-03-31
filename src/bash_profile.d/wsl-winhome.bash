[[ "`uname -r`" =~ Microsoft$ ]] || return 0

win () { cd "$USERPROFILE"'/'"$*"; }
export -f win
