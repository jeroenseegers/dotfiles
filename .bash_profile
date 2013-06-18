# External files
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_functions ] && . ~/.bash_functions

# OS specific files
[ $(uname) == "Darwin" ] && source ~/.bash_profile_osx

# Various settings
export EDITOR="vim"
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export HISTCONTROL=erasedups
export HISTIGNORE="ll:la:cd:..:cd ..:pwd:"
export VERSIONER_PYTHON_PREFER_32_BIT=yes
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Custom shell prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w"
if [ $(type -t __git_ps1) ]; then
    # Shell prompt as shared by Thomas Ferreira
    # http://coderwall.com/p/fr79pa
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export PS1="$PS1\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]"
elif [ $(type -t parse_git_branch) ]; then
    export PS1="$PS1\[\033[01;33m\]$(parse_git_branch)\[\033[01;34m\]"
fi
export PS1="$PS1 \$\[\033[00m\] "

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH=/usr/local/lib/erlang/lib/erl_interface-3.7.8/bin:$PATH

# Enable local override
[ -f ~/.bash_profile_local ] && . ~/.bash_profile_local
