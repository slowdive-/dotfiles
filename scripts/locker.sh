#!/bin/sh
bg=/usr/share/pixmaps/powered-by-gnu-linux.png
convert $bg -gravity Center -font Dejavu-Sans -annotate +0+0 "Locked by: $USER" /tmp/i3lock-tmp.png

i3lock -i /tmp/i3lock-tmp.png
