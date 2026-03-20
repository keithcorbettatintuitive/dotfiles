# Aliases
alias edit=code
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
RESET="\[\033[0m\]"

# Git branch
parse_git_branch() {
  git branch --show-current 2>/dev/null
}

# Git dirty flag (* if modified)
parse_git_dirty() {
  if ! git diff --quiet 2>/dev/null; then
    echo "*"
  fi
}

# Prompt
export PS1="${BLUE}\W${RESET} ${YELLOW}\$(parse_git_branch)\$(parse_git_dirty)${RESET} \$ "