export ZSH="/home/otavio/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  git-flow
  zsh-better-npm-completion
)

source $ZSH/oh-my-zsh.sh

EDITOR="vim"
SOURCES_ROOT="$HOME/sources"
DOTFILES_ROOT="$SOURCES_ROOT/own/dotfiles"

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
alias cdds="cd $SOURCES_ROOT/devserver/mongo"
alias cdsrc="cd $SOURCES_ROOT"
alias cdz="cd $SOURCES_ROOT/zeon"
alias cdsocial="cd $SOURCES_ROOT/kodde/lecom/social"
alias cdws="cd $SOURCES_ROOT/kodde/lecom/workspace"
alias cdwss="cd $SOURCES_ROOT/kodde/lecom/workspace/server"
alias cdwsf="cd $SOURCES_ROOT/kodde/lecom/workspace/web"
alias cdgov="cd $SOURCES_ROOT/kodde/lecom/governance/web"
alias cdlb="cd $SOURCES_ROOT/kodde/lupa/api"
alias cdlf="cd $SOURCES_ROOT/kodde/lupa/web"
alias cdsf="cd $SOURCES_ROOT/kodde/spark-app"
alias cdsb="cd $SOURCES_ROOT/kodde/spark-api"
alias cdaf="cd $SOURCES_ROOT/kodde/ago/web"
alias cdab="cd $SOURCES_ROOT/kodde/ago/api"
alias cddot="cd $SOURCES_ROOT/own/dotfiles"

# Yarn
alias yrd="yarn run dev"
alias yrb="yarn run build"
alias yrl="yarn run lint"
alias yrs="yarn run start"
alias yrt="yarn run test"
alias yrtdd="yarn run tdd"
alias yru="yarn run unit"

# NPM

alias nrd="npm run dev"
alias nrb="npm run build"
alias nrl="npm run lint"
alias nrs="npm run start"
alias nrt="npm run test"
alias nrtdd="npm run tdd"
alias nru="npm run unit"

alias startmssql="cd ~/sources/devserver/mssql && docker-compose up -d && cd -"
alias startpostgres="cd ~/sources/devserver/postgres && docker-compose up -d && cd -"
alias startmongo="cdds && docker-compose up -d && cd -"
alias startlecomvpn="sudo openvpn --config $HOME/vpn-lecom/terceiros.ovpn"

# Docker
alias dps="docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Ports}}\""
alias dcup="docker-compose up -d"
alias dsa='docker stop $(docker ps -q)'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Node version manager
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"

  function __nvmrc_on_cd() {
    [[ -f "./.nvmrc" ]] && nvm use
  }

  chpwd_functions=(${chpwd_functions[@]} "__nvmrc_on_cd")

  # If the shell loads in an .nvmrc folder
  [[ -f "./.nvmrc" ]] && __nvmrc_on_cd
fi

export ANDROID_SDK_ROOT=$HOME/Android/Sdk

export PATH="$PATH:`yarn global bin`:/snap/bin"
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:/opt/maven/bin

# Jabba (Java version manager)
[ -s "/home/otavio/.jabba/jabba.sh" ] && source "/home/otavio/.jabba/jabba.sh"

# Microsoft AppCenter
# begin appcenter completion
. <(appcenter --completion)
# end appcenter completion
