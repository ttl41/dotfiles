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
run dunst
sleep 5
xset r rate 200 60
setxkbmap -option caps:escape
run sh -c '/usr/bin/nvidia-settings --load-config-only'
run redshift 
run picom --experimental-backend --log-file ~/.config/picom/picom.log
run corectrl
#run /home/beltza/.config/bspwm/doubleborders.sh
