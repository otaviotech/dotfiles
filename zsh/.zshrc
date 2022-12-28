export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  git-flow
  docker
#  kubectl # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/kubectl/kubectl.plugin.zsh
#  zsh-better-npm-completion
#  zsh-vi-mode
)

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# Load environment variables
[ -f ~/.envrc ] && source ~/.envrc

# Load aliases
[ -f ~/.aliasesrc ] && source ~/.aliasesrc

# Load nvm
[ -f ~/.nvmsetup ] && source ~/.nvmsetup
 
# Load FZF
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Start tmux instad of normal zsh.
if [ "$TMUX" = "" ]; then tmux; fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
