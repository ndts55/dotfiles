#!/bin/bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# fish
ln -s $current_dir/fish ~/.config/fish
rm fish/fish

# home
ln -s $current_dir/home/Xresources ~/.Xresources
ln -s $current_dir/home/profile ~/.profile
ln -s $current_dir/home/bashrc ~/.bashrc

# theme
ln -s $current_dir/xthemes/theme ~/.theme

# i3 wm
ln -s $current_dir/i3 ~/.config/i3
rm i3/i3

# neovim
ln -s $current_dir/nvim ~/.config/nvim
rm nvim/nvim

# compton
ln -s $current_dir/compton/compton.conf ~/.config/compton.conf

# rofi
ln -s $current_dir/rofi ~/.local/share/rofi
rm rofi/rofi

# tmux
ln -s $current_dir/tmux/tmux.conf ~/.tmux.conf

# termite
ln -s $current_dir/termite ~/.config/termite
rm termite/termite

# locale
ln -s $current_dir/locale.conf /etc/locale.conf

# polybar
ln -s $current_dir/polybar ~/.config/polybar
