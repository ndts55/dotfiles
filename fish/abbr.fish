# universal aliases
alias ls="ls --color=always"
alias la="ls -a"
alias ll="ls -l"
alias lal="ls -la"
alias d="cd /mnt/Data"
alias r="ranger"
alias dr="d; r"

# git
alias gs="git status"
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"

# nixos
alias delgensold="sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old"
alias collectgarbage="nix-collect-garbage -d"
alias listgens="sudo nix-env -p /nix/var/nix/profiles/system --list-generations"
alias nixbuild="sudo nixos-rebuild build --show-trace"
alias nixtest="sudo nixos-rebuild test"
alias nixswitch="sudo nixos-rebuild switch"
alias nixconf="sudo nvim ~/linux-conf/nixos/configuration.nix"

# maim
alias cpsel="maim -s | xclip -selection clipboard -t image/png"

# postgres
alias supost="sudo -u postgres -i"

# pacman alias
alias pupdt="sudo pacman -Syy"
alias pinst="sudo pacman -S"
alias pupgr="sudo pacman -Syu"
alias prm="sudo pacman -Rs"
alias pqs="pacman -Qs"
alias porphans="pacman -Qtdq"
alias pqi="pacman -Qi"

# yaourt alias
alias yinst="yaourt -S"

# tar
alias gzunpack="tar -xvzf"
alias gzpack="tar -cvzf"
alias tarunpack="tar -xvf"
alias tarpack="tar -cvf"

# tmux
alias tm="tmux a"
alias tmt="tmux a -t"
alias tmd="tmux detach-client"
