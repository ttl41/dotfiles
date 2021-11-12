#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
# run picom
run ~/.config/polybar/launch.sh
run /usr/bin/lxpolkit
~/.fehbg
run redshift 
run dunst
sleep 5
xset r rate 200 60
setxkbmap -option caps:escape
run premid
run onboard
#run /home/beltza/.config/bspwm/doubleborders.sh
