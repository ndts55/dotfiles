function setwallpaper --description "set the wallpaper really easy"
	cp -rf $argv ~/.wallpaper
	i3 restart
end
