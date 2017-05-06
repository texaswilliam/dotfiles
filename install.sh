#!/bin/sh
cd "`dirname $0`/src"
for file in *; do ln -irs "$file" "$HOME/.$file"; done
