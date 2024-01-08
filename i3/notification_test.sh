#!/usr/bin/bash

cmds=(
	"test1 hello" 
	"test2 hello"
	"test3 ohno -u critical"
	"test4 hmmmmmmmmmmmmmmmmmmmmmmmmmmm -u low"
)

for cmd in "${cmds[@]}"
do
	notify-send $cmd
done


