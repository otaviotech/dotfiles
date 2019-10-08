export ZSH="/home/otavio/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  git-flow
)

source $ZSH/oh-my-zsh.sh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cd.='cd ..'
alias cd..='cd ..'
alias ll='ls -l'
alias vi='nvim'
alias vim='nvim'
alias which='type -p'

alias cdd="cd $HOME/Downloads"
alias cdds="cd $HOME/sources/devserver/mongo"
alias cdsrc="cd $HOME/sources"
alias cdz="cd $HOME/sources/zeon"
alias cdgb="cd $HOME/sources/own/gun-bot"
alias cdwsf="cd $HOME/sources/kodde/workspace-web"
alias cdlb="cd $HOME/sources/kodde/lupa/api"
alias cdlf="cd $HOME/sources/kodde/lupa/web"
alias cdsf="cd $HOME/sources/kodde/spark-app"
alias cdsb="cd $HOME/sources/kodde/spark-api"
alias cddot="cd $HOME/sources/own/dotfiles"

alias yrd="yarn run dev"
alias yrb="yarn run build"
alias yrl="yarn run lint"
alias yrs="yarn run start"
alias yrtdd="yarn run tdd"
alias yru="yarn run unit"
alias startmssql="cd ~/sources/devserver/mssql && docker-compose up -d && cd -"
alias startmongo="cdds && docker-compose up -d && cd -"
alias startlecomvpn="sudo openvpn --config $HOME/vpn-lecom/terceiros.ovpn"

# Docker
alias dps="docker ps"
alias dcup="docker compose up -d"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$PATH:`yarn global bin`:/snap/bin"

