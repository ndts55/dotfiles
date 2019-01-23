# exa aliases
alias ls="exa"
alias l="exa -lh"
alias la="exa -lah"
alias ld="exa -lah | grep \"^d\""

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
alias gl="git pull"
alias gd="git diff"
alias gdiscard="git checkout --"

# pacman
alias pqs="pacman -Qs"
alias porphans="pacman -Qtdq"
alias pqi="pacman -Qi"
alias prm="sudo pacman -Rs"
alias pinst="sudo pacman -S"

# protonvpn-cli
alias proton="sudo protonvpn-cli"
alias protonstatus="sudo protonvpn-cli --status"

