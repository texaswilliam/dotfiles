[ "`uname -s`" = Darwin ] || return 0

flushdns () { sudo killall -HUP mDNSResponder; }
export -f flushdns
