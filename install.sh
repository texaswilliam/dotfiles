#!/bin/sh
cd "`dirname $0`/src"
for file in *; do ln -isT "`dirname $0`/src/$file" "$HOME/.$file"; done
