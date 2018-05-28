#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

for i in $(polybar -m | awk -F: '{print $1}'); do MONITOR=$i polybar example -r -c ~/.config/polybar/config & done

