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
run feh --randomize --bg-fill ~/Pictures/Wallpapers/Nord
run redshift 
xset r rate 300 50
setxkbmap -option caps:escape
run dunst
