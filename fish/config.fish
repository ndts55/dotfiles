set DEFAULT_USER ndts
set -gx EDITOR nvim
set -gx BROWSER google-chrome-stable

source ~/.config/fish/abbr.fish

# start X on login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty > ~/.xorg.log ^&1
    end
end

