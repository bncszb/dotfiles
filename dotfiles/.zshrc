
alias sz='source ~/.zshrc'
alias ls='ls --color'
alias c='clear'
alias lg='lazygit'
alias v='cd /Users/${USER}/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Vault'
alias ic='cd /Users/${USER}/Library/Mobile\ Documents/com~apple~CloudDocs'

export XDG_CONFIG_HOME="$HOME/.config"

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

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# aider
export AIDER_AUTO_COMMITS=false

function gpw() {
  a=$(openssl rand -base64 40 | tr -d '/+=Oo0lI' | cut -c1-25)  
  echo "$a"
  echo -n "$a" | pbcopy
}

function spw() {
  a=`openssl rand -base64 29 | tr -d "=+/" | cut -c1-25`
  echo $a
  echo -n $a | pbcopy
}


bindkey "\e[1;3D" backward-word     # ⌥←
bindkey "\e[1;3C" forward-word      # ⌥→
bindkey "^[[1;9D" beginning-of-line # cmd+←
bindkey "^[[1;9C" end-of-line       # cmd+→word
export PATH="/usr/local/opt/curl/bin:$PATH"
