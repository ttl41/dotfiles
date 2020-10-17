#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
# run picom
run /usr/lib/mate-polkit/polkit-mate-authentication-agent-1
~/.fehbg
run redshift 
xset r rate 300 50
setxkbmap -option caps:escape
