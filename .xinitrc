#!/bin/sh
export DISPLAY=:0.0
xset dpms 0 0 0 s off
xinput set-int-prop 7 "Device Enabled" 8 0
shairport-sync-metadata-reader < /tmp/shairport-sync-metadata &>/dev/null &
shairport-sync-monitor &
matchbox-window-manager &
unclutter -idle 0 &
while true; do
  midori -e Fullscreen -a http://127.0.0.1/
done
