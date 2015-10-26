#!/bin/sh
# Configure X
xrandr --output DP-1 --mode 1920x1080 --primary --auto --output HDMI-0 --mode 1920x1080 --right-of DP-1 --auto --output DP-3 --mode 1920x1080 --left-of DP-1 --auto

## Set cursor
xsetroot -cursor_name left_ptr &

## Set keyboard layout
setxkbmap -layout fo -variant dvorak-fo

## Set lock screen
xautolock -time 10 -locker '~/cfg/script/lock.sh' &

## Set background image
#exec feh --bg-scale "$HOME/pictures/wallpaper/linux_arch_black.jpg" &
feh --bg-scale 'images/tree2.jpg' --bg-scale 'images/tree3.jpg' --bg-scale 'images/tree1.jpg'

## Set conky
#conky -c "$HOME/dotfiles/conky/conky_log" &

#start i3
exec i3
exec dunst

