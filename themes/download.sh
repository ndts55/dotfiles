#! /bin/bash

mkdir $1

# download xresources
curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/base16-$1-256.Xresources >> $1/xresources

# download termite
curl https://raw.githubusercontent.com/khamer/base16-termite/master/themes/base16-$1.config >> $1/termite

# download qutebrowser
curl https://raw.githubusercontent.com/theova/base16-qutebrowser/master/themes/base16-$1.config.py >> $1/qutebrowser.py
