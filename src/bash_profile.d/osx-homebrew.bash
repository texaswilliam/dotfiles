[ "`uname -s`" = Darwin ] && whether brew || return 0

eval "`brew shellenv`"
HOMEBREW_INSTALL_CLEANUP=1
[ -f ~/.homebrew_github_api_token ] && HOMEBREW_GITHUB_API_TOKEN="$(< ~/.homebrew_github_api_token)"

export HOMEBREW_GITHUB_API_TOKEN HOMEBREW_INSTALL_CLEANUP
