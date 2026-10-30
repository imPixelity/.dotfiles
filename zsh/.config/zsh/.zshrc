# Let eza/ls themes control colors instead of the inherited LS_COLORS
unset LS_COLORS

# History
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

# Share history across sessions, skip duplicates, ignore commands starting with a space
setopt SHARE_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS

# No terminal bell on errors
setopt NO_BEEP

# Completion
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
zstyle ':completion:*' menu select
# Case-insensitive matching (lowercase input matches uppercase)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Keybindings
# Emacs-style line editing
bindkey -e
# Tab cycles through completions
bindkey '^I' menu-complete
# Shift+Tab cycles backwards
bindkey '^[[Z' reverse-menu-complete

# Load modular config
source "$ZDOTDIR/fzf.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/init.zsh"
source "$ZDOTDIR/plugins.zsh"
