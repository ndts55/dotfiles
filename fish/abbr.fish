# universal aliases
alias ls="ls --color=always -h"
alias la="ls -a"
alias ll="ls -lh"
alias l="ls -lh"
alias lal="ls -lah"
alias d="cd /mnt/Data"
alias r="ranger"
alias dr="d; r"

# git
alias gs="git status"
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"

# pacman alias
alias pupdt="sudo pacman -Syy"
alias pinst="sudo pacman -S"
alias pupgr="sudo pacman -Syu"
alias pclean="paccache -r"
alias prm="sudo pacman -Rs"
alias pqs="pacman -Qs"
alias porphans="pacman -Qtdq"
alias pqi="pacman -Qi"

# yaourt alias
alias yinst="yaourt -S"
alias yupgr="yaourt -Syu --aur"

# tar
alias gzunpack="tar -xvzf"
alias gzpack="tar -cvzf"
alias tarunpack="tar -xvf"
alias tarpack="tar -cvf"

# tmux
alias tm="tmux a"
alias tmt="tmux a -t"
alias tmd="tmux detach-client"

# betterlockscreen
alias lockimageupdt="betterlockscreen -u ~/.config/i3/lockimage"

