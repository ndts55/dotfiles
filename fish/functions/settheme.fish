function settheme --description "set theme using xrdb"
    cp -rf $argv ~/.theme
    cp -rf $argv ./theme
    xrdb -merge ~/.Xresources
    xrdb -merge ~/.theme
end
