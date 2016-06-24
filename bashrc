# Update window size after every command
shopt -s checkwinsize

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '

# Enable incremental history search with up/down arrows (also Readline goodness)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

if [[ -d ~/.rbenv ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [[ -d ~/.nvm ]]; then
  export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"
fi

if [[ -d ~/.tmuxifier ]]; then
  export PATH="$HOME/.tmuxifier/bin:$PATH"
  eval "$(tmuxifier init -)"
fi

if [[ -d ~/bin ]]; then
  export PATH="$HOME/bin:$PATH"
fi

if [[ -f ~/Dropbox/Wiki/ledger.dat ]]; then
  export LEDGER_FILE="$HOME/Dropbox/Wiki/ledger.dat"
fi

if type git > /dev/null; then
  alias g='git'
fi
