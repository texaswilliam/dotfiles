# dotfiles

## Installation
`install.sh` merely symlinks everything in `src`, but it'll get you running. This really seems to be the best way to use
it and contribute, as hardlinks have the unfortunate tendency to get unlinked by editors, leading to needless manual
merging. I've yet to run into a `bash` that won't take its configuration from a symlink and writing a script to blast
someone's `~/.*` seems a bit heavyhanded, so this is how it will remain.
