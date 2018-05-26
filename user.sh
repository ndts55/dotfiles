#!/bin/bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# fish
ln -s $current_dir/fish ~/.config/fish

# home
ln -s $current_dir/home/Xresources ~/.Xresources
ln -s $current_dir/home/profile ~/.profile
ln -s $current_dir/home/bashrc ~/.bashrc

# theme
ln -s $current_dir/xthemes/theme ~/.theme

# i3 wm
ln -s $current_dir/i3 ~/.config/i3

# neovim
ln -s $current_dir/nvim ~/.config/nvim

# compton
ln -s $current_dir/compton/compton.conf ~/.config/compton.conf

# rofi
ln -s $current_dir/rofi/themes ~/.local/share/rofi/themes

# tmux
ln -s $current_dir/tmux/tmux.conf ~/.tmux.conf

# termite
cat termite/common termite/colors > termite/config
ln -s $current_dir/termite ~/.config/termite

