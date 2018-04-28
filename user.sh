# directory stuff
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# fish
rm -r ~/.config/fish
cp -af fish ~/.config/

# home
cp -f home/Xresources ~/.Xresources
cp -f home/profile ~/.profile
cp -f home/bashrc ~/.bashrc

# theme
cp -f xthemes/theme ~/.theme

# i3 wm
rm -r ~/.config/i3
cp -af i3 ~/.config/

# neovim
cp -af nvim ~/.config/

# compton
cp -f compton/compton.conf ~/.config/

# rofi
rm -r ~/.local/share/rofi/themes
cp -af rofi/themes ~/.local/share/rofi/

# tmux
cp -f tmux/tmux.conf ~/.tmux.conf

# termite
cat termite/common termite/colors > termite/config
cp -af termite ~/.config/

