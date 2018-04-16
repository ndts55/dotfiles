function start_tmux
    if type tmux > /dev/null
        if test -z "$TMUX" ; and test -z $TERMINAL_CONTEXT
            exec tmux -2 attach; or tmux -2 new-session
        end
    end
end

set DEFAULT_USER ndts
set -gx EDITOR nvim
set -gx BROWSER google-chrome-stable
set -gx GOPATH /mnt/Data/g/go

source ~/.config/fish/abbr.fish

