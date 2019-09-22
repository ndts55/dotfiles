#!/bin/bash

function create_link {
    # if dir and link or file just leave as is
    if [ -L "$2" ]; then
        if [ -d "$2" ]; then
            echo "W | $2 is link to dir already"
        elif [ -f "$2" ]; then
            echo "W |  $2 is link to file already"
        elif [ ! -e "$2" ]; then
            echo "E |  $2 links to non-existent file or dir"
        else
            echo "E |  $2 is a link already"
        fi
        return
    fi

    # if doesn't exist just create link
    if [ ! -e "$2" ]; then
        ln -s "$1" "$2"
        echo "S |  created link from $1 to $2"
        return
    fi

    # exists and is either not dir or not link
    # rename and link
    mv "$2" $2_old
    echo "I |  renamed $2 to $2_old"
    ln -s "$1" "$2"
    echo "S |  created link from $1 to $2"
}

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
config_dir="$HOME/.config"

if [ ! -d $config_dir ]; then
    mkdir $config_dir
fi

# dunst
create_link $current_dir/dunst $config_dir/dunst

# fish
create_link $current_dir/fish $config_dir/fish

# i3 wm
create_link $current_dir/i3 $config_dir/i3

# redshift
create_link $current_dir/redshift/redshift.conf ~/.config/redshift.conf

# rofi
create_link $current_dir/rofi ~/.local/share/rofi

# vim
create_link $current_dir/vim/vimrc ~/.vimrc

# zathura
create_link $current_dir/zathura ~/.config/zathura

