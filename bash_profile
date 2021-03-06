### Global ###

# Source non-login rc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PAGER=/usr/bin/less
export EDITOR=/usr/bin/vim
export CLICOLOR=1
export TERM="xterm-color"

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%.local}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
