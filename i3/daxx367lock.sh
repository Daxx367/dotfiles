#!/usr/bin/env bash

# Note this needs a commandline screenshot tool installed in this case it is "scrot"
# Also needs ImageMagick
# Sorry I can't remember where I got this one, I think it may have been a reddit post in r/unixporn

icon="$HOME/.config/i3/lockicon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
