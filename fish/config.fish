set DEFAULT_USER ndts
set -gx EDITOR vim
set -gx BROWSER firefox

source ~/.config/fish/abbr.fish

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

