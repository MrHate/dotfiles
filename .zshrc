# ~/.zshrc

# Check git status if possible.
git_prompt() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
    if [[ `git status --porcelain` ]]; then
      ref=$ref*
    fi
    echo \($ref\)
  fi
}

setopt prompt_subst

# Using ANSI escape codes here may cause error on tab completion.
PS1='%F{green}%n@%m:%F{blue}%~%F{red}$(git_prompt)%f%# '

# Alias
alias l='ls -CFG'
alias la='ls -AG'
alias ll='ls -alFG'
alias ve='nvim'
