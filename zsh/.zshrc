unset LS_COLORS

export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$HOME/Development/flutter/bin:$PATH"
export PATH="$HOME/Development/scrcpy:$PATH"
export PATH="$HOME/Development/android_sdk/cmdline-tools/latest/bin:$PATH"
export PATH="$HOME/Development/android_sdk/platform-tools:$PATH"
export PATH="$HOME/Development/zig:$PATH"

export EDITOR=vim
export VISUAL=vim

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
  --height 40%
  --layout=reverse
  --border
'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="
  --preview 'bat --style=numbers --color=always --line-range :500 {}'
  --preview-window=right:60%:wrap
"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_ALT_C_OPTS="
  --preview 'eza --tree --level=2 --icons=auto {}'
  --preview-window=right:60%
"
export FZF_CTRL_R_OPTS='
  --sort
  --exact
  --preview "echo {}"
'

export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
export BAT_CONFIG_DIR="$HOME/.config/bat"

export EZA_CONFIG_DIR="$HOME/.config/eza"

alias ff="fastfetch"

alias ls='eza --group-directories-first --classify --header --icons=auto --git'
alias ll='eza --long --group-directories-first --classify --header --icons=auto --git'
alias la='eza --all --group-directories-first --classify --header --icons=auto --git'
alias lt='eza --tree --group-directories-first --classify --header --icons=auto --git'

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
eval "$(starship init zsh)"
