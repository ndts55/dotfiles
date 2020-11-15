#!/bin/zsh
(( a = $(xbacklight) / 10 ))
(( lux = $(printf '%.0f\n' $a) * 10 ))

if [[ $1 = '-' && $lux != '0' ]]; then
    (( lux = $lux - 10 ))
elif [[ $1 = '+' && $lux != '100' ]]; then
    (( lux = $lux + 10 ))
else
    return
fi

xbacklight -set $lux
echo $lux > /home/ndts/.config/brightness
killall -SIGUSR1 i3status

