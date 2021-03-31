[[ "`uname -r`" =~ Microsoft$ ]] || return 0

command_not_found_handle () {
    local cmd="$1"
    shift 1

    if ! { hash "$cmd.exe" && hash -p "$(hash -t "$cmd.exe")" "$cmd" &&
            hash "$cmd.bat" && hash -p "$(hash -t "$cmd.bat")" "$cmd"; } &> /dev/null; then
        echo "$0: $cmd: command not found"
        echo "$0: $cmd.exe: command not found"
        echo "$0: $cmd.bat: command not found"
        return 127
    fi

    eval "$cmd" "$@"
}
export -f command_not_found_handle
