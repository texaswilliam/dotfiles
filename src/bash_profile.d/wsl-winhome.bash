[[ "`uname -r`" =~ Microsoft$ ]] || return 0

win () { cd "`wslpath "$USERPROFILE"`/$*"; }
export -f win
