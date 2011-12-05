alias ls='ls --color=auto'
alias ll='ls -alF'
alias grep='grep --color=auto'
alias grep='fgrep --color=auto'
alias grep='egrep --color=auto'
export HISTSIZE=2000
export HISTCONTROL=ignorespace;ignoredups
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '
alias bot='cd $(dirname $(find . | tail -1))'
shopt -s cdspell

if [ "$MSYSTEM" ]; then
    alias xclip=clip
fi
