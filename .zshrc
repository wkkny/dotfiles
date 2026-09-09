# Keep this file fast and intentional.

# Pi's Node installation
export PATH="$HOME/.local/share/pi-node/node-v22.23.2-darwin-arm64/bin:$PATH"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt append_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt extended_history

# Completion
autoload -Uz compinit
compinit

# Plugins managed by Antidote
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load "$HOME/.zsh_plugins.txt"

# Runtime manager integration
if (( $+commands[mise] )); then
  eval "$(mise activate zsh)"
fi

# Interactive integrations and prompt; skip these for non-terminal shells.
if [[ -t 0 && -t 1 ]]; then
  if (( $+commands[fzf] )); then
    eval "$(fzf --zsh)"
  fi
  if (( $+commands[zoxide] )); then
    eval "$(zoxide init zsh)"
  fi
  if (( $+commands[atuin] )); then
    eval "$(atuin init zsh)"
  fi
  if (( $+commands[starship] )); then
    eval "$(starship init zsh)"
  fi
fi

# Local aliases and functions
for config_file in "$HOME/.config/zsh/"*.zsh(N); do
  source "$config_file"
done
