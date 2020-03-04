## If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

## ifconfig CIDR format for FreeBSD
export IFCONFIG_FORMAT=inet:cidr,inet6:cidr

## Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

## Append to the history file, don't overwrite it
shopt -s histappend

## For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

## Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

## Load bash_aliases, if it exsist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## Load bash_aliases2 if it exsist. Used for local aliases
if [ -f ~/.bash_aliases2 ]; then
    . ~/.bash_aliases2
fi

## Load all config in bash completion folder
for f in /usr/local/etc/bash_completion.d/*; do
    . $f
done

# Autocomplete stuff
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
