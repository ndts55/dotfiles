#!/bin/bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# fish
ln -fs $current_dir/fish ~/.config/fish

# home
ln -fs $current_dir/home/Xresources ~/.Xresources
ln -fs $current_dir/home/profile ~/.profile
ln -fs $current_dir/home/bashrc ~/.bashrc

# theme
ln -fs $current_dir/xthemes/theme ~/.theme

# i3 wm
ln -fs $current_dir/i3 ~/.config/i3

# neovim
ln -fs $current_dir/nvim ~/.config/nvim

# compton
ln -fs $current_dir/compton/compton.conf ~/.config/compton.conf

# rofi
ln -fs $current_dir/rofi/themes ~/.local/share/rofi/themes

# tmux
ln -fs $current_dir/tmux/tmux.conf ~/.tmux.conf

# termite
cat termite/common termite/colors > termite/config
ln -fs $current_dir/termite ~/.config/termite

