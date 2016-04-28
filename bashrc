if [[ -d ~/.rbenv ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [[ -d ~/.nvm ]]; then
  source ~/.nvm/nvm.sh
fi

if [[ -d ~/bin ]]; then
  export PATH="$HOME/bin:$PATH"
fi

if [[ -f ~/Dropbox/Wiki/ledger.dat ]]; then
  export LEDGER_FILE="$HOME/Dropbox/Wiki/ledger.dat"
fi
