## If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


## Change prompt layout
export PS1="\[\e[33m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[36m\]\\$\[\e[m\] "


## don't put duplicate lines or lines starting with space in the history.
## See bash(1) for more options
HISTCONTROL=ignoreboth


## append to the history file, don't overwrite it
shopt -s histappend


## for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000


## check the window size after each command and, if necessary,
## update the values of LINES and COLUMNS.
shopt -s checkwinsize


## load aliases, if it exsist 
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


## load all config in bash completion folder
for f in /usr/local/etc/bash_completion.d/*; do
    . $f
done


## autocomplete stuff - DISABLED ATM
#if ! shopt -oq posix; then
#  if [ -f /usr/local/share/bash-completion/bash_completion ]; then
#    . /usr/local/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi
