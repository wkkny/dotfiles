# Dotfiles

Personal shell and terminal configuration for macOS, managed with Git as a bare repository.

## Included

- **Zsh** — shell startup, history, completion, aliases, and helper functions
- **Antidote** — Zsh plugins listed in `.zsh_plugins.txt`
- **Ghostty** — terminal settings
- **Starship** — Gruvbox Dark prompt

The configuration also integrates with Homebrew, `mise`, `fzf`, `zoxide`, and `atuin` when those tools are installed.

## Installation

Clone the repository as a bare repo, then check out the files into your home directory:

```sh
git clone --bare https://github.com/fuzzyKenny/dotfiles.git "$HOME/.dotfiles"
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles checkout
dotfiles config status.showUntrackedFiles no
```

Install the tools referenced by the configuration separately. The Zsh plugin manager must be available at `/opt/homebrew/opt/antidote/share/antidote/antidote.zsh`.

## Updating

```sh
dotfiles pull
dotfiles add ~/.zshrc ~/.config
dotfiles commit -m "Update dotfiles"
dotfiles push
```
