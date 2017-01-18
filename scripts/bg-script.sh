#!/bin/sh
while [ 1 ]
do
	for image in ~/wallpapers/*.*
	do
		feh  --bg-scale $image --no-fehbg
		sleep 120
	done
done
