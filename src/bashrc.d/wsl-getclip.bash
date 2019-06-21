[[ "`uname -r`" =~ Microsoft$ ]] || return 0

getclip () { powershell -Command Get-Clipboard; }
export -f getclip
