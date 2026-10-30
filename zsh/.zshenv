# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Point zsh at its config directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Default editor
export EDITOR=vim
export VISUAL=vim

# PATH: user binaries
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# PATH: dev tools
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$HOME/Development/flutter/bin:$PATH"
export PATH="$HOME/Development/scrcpy:$PATH"
export PATH="$HOME/Development/zig:$PATH"

# PATH: Android SDK
export PATH="$HOME/Development/android_sdk/cmdline-tools/latest/bin:$PATH"
export PATH="$HOME/Development/android_sdk/platform-tools:$PATH"

# Tool config locations
export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
export BAT_CONFIG_DIR="$HOME/.config/bat"
export EZA_CONFIG_DIR="$HOME/.config/eza"
