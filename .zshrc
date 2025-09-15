if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
EDITOR=nvim

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh_history
setopt appendhistory

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
