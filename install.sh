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

# compton
create_link $current_dir/compton/compton.conf ~/.config/compton.conf

# dunst
create_link $current_dir/dunst $config_dir/dunst

# fish
create_link $current_dir/fish $config_dir/fish

# home
create_link $current_dir/home/Xresources $HOME/.Xresources
create_link $current_dir/home/profile $HOME/.profile
create_link $current_dir/home/bashrc $HOME/.bashrc
create_link $current_dir/home/theme $HOME/.theme

# i3 wm
create_link $current_dir/i3 $config_dir/i3

# neovim
create_link $current_dir/nvim ~/.config/nvim

# polybar
create_link $current_dir/polybar ~/.config/polybar

# ranger
create_link $current_dir/ranger ~/.config/ranger

# redshift
create_link $current_dir/redshift/redshift.conf ~/.config/redshift.conf

# rofi
create_link $current_dir/rofi ~/.local/share/rofi

# termite
create_link $current_dir/termite ~/.config/termite

# tmux
create_link $current_dir/tmux/tmux.conf ~/.tmux.conf

# qutebrowser
create_link $current_dir/qutebrowser/config.py ~/.config/qutebrowser/config.py
create_link $current_dir/qutebrowser/theme.py ~/.config/qutebrowser/theme.py

# zathura
create_link $current_dir/zathura ~/.config/zathura

if [ ! -d "$config_dir/base16-shell" ]; then
    echo "D |  downloading base16-shell repository"
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi
