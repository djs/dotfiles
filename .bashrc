set -o vi

export HISTSIZE=2000
export HISTCONTROL=ignorespace:ignoredups
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '
export HISTIGNORE='pwd:ls:ll'
shopt -s cdspell
shopt -s cmdhist
shopt -s dirspell
shopt -s extglob
shopt -s histappend

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# ------------------------------------------------------------------
# Options for msysgit bash
# ------------------------------------------------------------------
if [ "$MSYSTEM" ]; then
    alias xclip=clip

    # Virtualenvwrapper config for msys
    # http://www.asyndetic.com/blog/2012/05/01/virtualenvwrapper-is-for-windows-users-too/
    export MSYS_HOME=$HOME
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/dev
    if [ -f /c/Python27/Scripts/virtualenvwrapper.sh ]; then
        source /c/Python27/Scripts/virtualenvwrapper.sh
    fi
fi

