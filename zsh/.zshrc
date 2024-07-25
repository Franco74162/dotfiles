# zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# plugins
zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting

zinit ice wait lucid
zinit light zsh-users/zsh-completions

zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light jeffreytse/zsh-vi-mode

# history
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# aliases
alias ls="eza --color=always --icons=always --group-directories-first"
alias la="eza -a --color=always --icons=always --group-directories-first"
alias l="eza -l --total-size --no-time --no-user --git --color=always --icons=always --group-directories-first"
alias ll="l -a"
alias tree="ls --tree"
alias v="nvim"
alias q="qalc"
alias bat="bat --color=always"
alias lgit="lazygit"
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

