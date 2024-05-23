PS1='%F{green}(%*):%F{cyan}%B%~%b %f%# '

DISABLE_AUTO_TITLE="true"

function precmd() {
  # Set title to the current username@hostname.
  echo -en "\033]0;$(whoami)@$(hostname)\007"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Alias
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# used by curl
# export ALL_PROXY=socks5h://127.0.0.1:1080
export PATH="/usr/local/opt/qt@5/bin:$PATH"
