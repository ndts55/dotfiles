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
local_share_dir="$HOME/.local/share"

if [ ! -d $config_dir ]; then
    mkdir -p $config_dir
fi

if [ ! -d $local_share_dir ]; then
    mkdir -p $local_share_dir
fi

# colorschemes
mkdir -p $local_share_dir/xfce4/terminal/colorschemes
create_link $current_dir/themes/maia.theme $local_share_dir/xfce4/terminal/colorschemes/maia.theme

# dunst
create_link $current_dir/dunst $config_dir/dunst

# emacs
create_link $current_dir/emacs $HOME/.emacs.d

# i3 status
create_link $current_dir/i3status $config_dir/i3status

# i3 wm
create_link $current_dir/i3 $config_dir/i3

# profile
create_link $current_dir/home/profile $HOME/.profile

# redshift
create_link $current_dir/redshift/redshift.conf $config_dir/redshift.conf

# rofi
create_link $current_dir/rofi $local_share_dir/rofi

# todo
create_link $current_dir/todo $HOME/.todo

# vim
create_link $current_dir/vim/vimrc $HOME/.vimrc

# Xresources
create_link $current_dir/home/Xresources $HOME/.Xresources

# zsh
create_link $current_dir/zsh/zshrc $HOME/.zshrc

