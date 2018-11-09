#!/bin/bash

# relevant link files
# qutebrowser/theme.py
# rofi/themes/default.rasi
# home/theme

function override_link {
    if [ -e "$2" ]; then
        unlink "$2"
    fi
    ln -s "$1" "$2"
}

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
theme_dir=$current_dir/"$1"

if [ ! -e $theme_dir ];then
    echo "X | $theme_dir does not exist"
    exit
fi

xr=$theme_dir/xresources
qb=$theme_dir/qutebrowser.py
ro=$theme_dir/rofi.rasi

if [ ! -e $xr ]; then
    echo "X | $xr does not exist"
    exit
fi

if [ ! -e $qb ]; then
    echo "X | $qb does not exist"
    exit
fi

if [ ! -e $ro ]; then
    echo "X | $ro does not exist"
    exit
fi

override_link $xr $current_dir/../home/theme
override_link $qb $current_dir/../qutebrowser/theme.py
override_link $ro $current_dir/../rofi/themes/default.rasi
