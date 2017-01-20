#!/bin/sh
if [ "$1" = "-s" ] || [ "$1" = "--slideshow" ]
then
	while [ 1 ]
	do
		for image in ~/wallpapers/*.*
		do
			feh  --bg-scale $image --no-fehbg
			sleep 120
		done
	done
else
	feh  --bg-scale ~/wallpapers/default.png --no-fehbg
fi
