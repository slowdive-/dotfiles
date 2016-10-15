#!/usr/bin/env bash

# maximize a window in floating mode
# un-maximization is not supported yet.
# fixed some numbers ... somehow the monitor rectangle gets screwed up

w=$(herbstclient get_attr clients.focus.winid)
monitor=( $(herbstclient monitor_rect -p +0) )
borderwidth=$(herbstclient get_attr theme.floating.active.border_width)
monitor[0]=$(( ${monitor[0]} + borderwidth ))
monitor[1]=$(( ${monitor[1]} + borderwidth - 16 ))
monitor[2]=$(( ${monitor[2]} - 2* borderwidth + 4 ))
monitor[3]=$(( ${monitor[3]} - 2* borderwidth ))

xdotool windowmove $w ${monitor[0]} ${monitor[1]} \
        windowsize $w ${monitor[2]} ${monitor[3]}
