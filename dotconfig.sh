#!/bin/bash

I3_CONFIG_DIR="${HOME}/.config/i3/"
I3_STATUS_CONFIG_DIR="${HOME}/.config/i3status/"
KITTY_DIR="${HOME}/.config/kitty/"
BASH_DIR=${HOME}"/.bashrc"
VIM_DIR="${HOME}/.vimrc"

DIRS=($I3_CONFIG_DIR $I3_STATUS_CONFIG_DIR $KITTY_DIR)
FILES=($BASH_DIR $VIM_DIR)

for d in "${DIRS[@]}"
do
	echo $d
	cp -r "$d" "${HOME}/dotconfigs"
done

for f in "${FILES[@]}"
do
	cp "$f" "${HOME}/dotconfigs"
done

