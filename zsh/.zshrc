export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$HOME/Development/flutter/bin:$PATH"
export PATH="$HOME/Development/scrcpy:$PATH"
export PATH="$HOME/Development/android_sdk/cmdline-tools/latest/bin:$PATH"
export PATH="$HOME/Development/android_sdk/platform-tools:$PATH"
export PATH="$HOME/Development/zig:$PATH"

export EDITOR=vim
export VISUAL=vim

alias ff="fastfetch"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt SHARE_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt NO_BEEP

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
compinit

bindkey '^I' menu-complete
bindkey '^[[Z' reverse-menu-complete

eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)
