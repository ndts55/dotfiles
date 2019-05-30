#! /bin/bash

mkdir $1

# download xresources
curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/base16-$1-256.Xresources >> $1/xresources

# download rofi
curl https://gitlab.com/0xdec/base16-rofi/raw/master/themes/base16-$1.rasi >> $1/rofi.rasi
