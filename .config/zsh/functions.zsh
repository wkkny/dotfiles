# Create a directory and enter it.
mkcd() {
  if (( $# != 1 )); then
    print -u2 'usage: mkcd directory'
    return 2
  fi
  mkdir -p -- "$1" && builtin cd -- "$1"
}

# Print PATH one entry per line.
path() {
  print -rl -- ${(s/:/)PATH}
}

# Update Homebrew packages and remove stale downloads.
brewup() {
  command brew update && command brew upgrade && command brew cleanup
}
