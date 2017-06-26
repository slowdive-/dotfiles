#!/bin/bash
amixer -q set Master 5%-

# Mute if volume < 1
vol=$(expr $(amixer get Master | grep -e "Left.*%" | cut -d'[' -f 2 | cut -d']' -f 1 | grep -o "[0-9]*"))
if [ $vol -lt 1 ]
then
	amixer -q set Master mute
fi
