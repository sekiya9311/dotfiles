export LANG=ja_JP.UTF-8

#alias
alias g++='g++ -O2 -Wall'
alias ssh='mosh'
alias vi='nvim'
alias vim='nvim'
alias ls='exa --icons'

autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

eval "$(starship init zsh)"

