
alias sz='source ~/.zshrc'
alias ls='ls --color'
alias c='clear'
alias lg='lazygit'
alias v='cd /Users/${USER}/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Vault'

# History
HISTSIZE=5000
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

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
eval "$(oh-my-posh init zsh)"
# fi