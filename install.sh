#!/bin/sh
cd "`dirname $0`/src"
for file in *; do ln -isT "`dirname \`readlink -f $0\``/$file" "$HOME/.$file"; done
