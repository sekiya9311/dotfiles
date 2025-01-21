export LANG=ja_JP.UTF-8

#alias
alias g++='g++ -O2 -Wall'
alias vi='nvim'
alias vim='nvim'
alias ls='eza --icons'
alias cat='bat'

autoload -Uz compinit && compinit
# https://qiita.com/watertight/items/2454f3e9e43ef647eb6b
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

zstyle ':completion:*:default' menu select=1

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install 22.13.0
nvm alias default 22.13.0

# for use fd
export PATH="$HOME/.local/bin:$PATH"

export PATH="/snap/bin:$PATH"

eval "$(starship init zsh)"

export GPG_TTY=$(tty)

