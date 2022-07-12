[[ "`uname -r`" =~ (Microsoft|microsoft-standard-WSL2)$ ]] || return 0

getclip () { powershell -Command Get-Clipboard; }
export -f getclip
