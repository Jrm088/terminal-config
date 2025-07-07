# ~/.bashrc: executed by bash for interactive shells.

# Source global definitions if available
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Enable Starship prompt
eval "$(starship init bash)"

# Run pfetch on shell start (comment out if you don’t want this every time)
if command -v pfetch >/dev/null 2>&1; then
    pfetch
fi

# Handy aliases
alias ll='ls -lah --color=auto'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ..='cd ..'
alias ...='cd ../..'

# Environment variables
export EDITOR=vim
export HISTCONTROL=ignoredups:erasedups  # avoid duplicate entries
export HISTSIZE=10000
export HISTFILESIZE=20000

# Enable color support for ls and grep if available
if command -v dircolors >/dev/null 2>&1; then
    eval "$(dircolors -b)"
fi

# Add your custom functions or variables below
export PATH="$HOME/terminal-config:$PATH"



