#!/bin/env zsh
PAD=$1
button1="<++>"
button2="<++>"
button3="<++>"
button4="<++>"

xsetwacom set "$PAD" Button 1 key $button1 &&
xsetwacom set "$PAD" Button 2 key $button2 &&
xsetwacom set "$PAD" Button 3 key $button3 &&
xsetwacom set "$PAD" Button 8 key $button4
