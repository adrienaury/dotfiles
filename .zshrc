# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

export LANG='fr_FR.UTF-8'
export LC_ALL='fr_FR.UTF-8'
export LANGUAGE='fr_FR:fr'
export TERM=xterm
export ZSH='/root/.oh-my-zsh'
export TZ=Europe/Paris

# Fix some problems with key bindings
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
