#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
# run picom
run ~/.config/polybar/launch.sh
run /usr/lib/mate-polkit/polkit-mate-authentication-agent-1
feh --bg-fill ~/Pictures/Wallpapers/general/louise-pilgaard-4muj7Br-O4U-unsplash.jpg
run redshift 
xset r rate 300 50
setxkbmap -option caps:escape
run dunst
run /home/beltza/.config/doubleborders.sh
