# exa aliases
alias ls="exa"
alias l="exa -lh"
alias la="exa -lah"

# directory stuff
alias d="cd /mnt/Data"
alias r="ranger"
alias dr="d; r"

# git
alias gs="git status"
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"
alias gd="git diff"

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

