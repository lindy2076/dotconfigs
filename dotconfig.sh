#!/bin/bash

I3_CONFIG_DIR="${HOME}/.config/i3/"
I3_STATUS_CONFIG_DIR="${HOME}/.config/i3status/"
KITTY_DIR="${HOME}/.config/kitty/"
GLOW_DIR="${HOME}/.config/glow"
BASH_DIR=${HOME}"/.bashrc"
VIM_DIR="${HOME}/.vimrc"

DIRS=($I3_CONFIG_DIR $I3_STATUS_CONFIG_DIR $KITTY_DIR $GLOW_DIR)
FILES=($BASH_DIR $VIM_DIR)

for d in "${DIRS[@]}"
do
	cp -r "$d" "$(dirname $0)"
done

for f in "${FILES[@]}"
do
	cp "$f" "$(dirname $0)"
done

