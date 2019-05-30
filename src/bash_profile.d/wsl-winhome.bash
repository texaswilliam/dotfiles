[[ "`uname -r`" =~ Microsoft$ ]] || return 0

win () { cd "/mnt/c/Users/wpyburn/$*"; }
export -f win
