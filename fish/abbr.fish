# exa aliases
alias ls="exa"
alias la="exa -a"
alias l="exa -lh"
alias lal="exa -lah"

# directory stuff
alias d="cd /mnt/Data"
alias r="ranger"
alias dr="d; r"
alias cr="cd; r"

# git
alias gs="git status"
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"

# aurman
alias pinst="aurman -S"
alias pupgr="aurman -Syu"
alias pclean="aurman -Sc"
alias prm="aurman -Rs"
alias pqs="aurman -Qs"
alias porphans="aurman -Qtdq"
alias pqi="aurman -Qi"

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

