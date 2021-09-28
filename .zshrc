# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alberto/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR=/bin/vim
export PATH=$HOME/.local/bin:$PATH
export dotfiles=/home/alberto/Documents/dotfiles

alias hibernate="systemctl hibernate"
alias n="nnn -d"
alias ls="ls --color"
alias ll="exa --icons"
alias la="exa --icons -la"
alias dot="vim $dotfiles"

source ~/.powerlevel10k/powerlevel10k.zsh-theme

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
