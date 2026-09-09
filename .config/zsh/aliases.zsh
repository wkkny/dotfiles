# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# File listing and viewing
alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons'
alias cat='bat --paging=never'
alias grep='rg'

# Everyday shortcuts
alias c='clear'
alias h='history 1'
alias reload='exec zsh'

# Dotfiles repository
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Git shortcuts
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --decorate --graph'
alias gco='git checkout'
alias gsw='git switch'
alias gp='git push'
alias gpl='git pull'
