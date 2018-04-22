## Change prompt layout
export PS1="\[\e[33m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[36m\]\\$\[\e[m\] "

## load bashrc if it exsist
if [ -f ~/.bashrc ]; then
	. ~/.bashrc;
fi 

## load bash_aliases if it exsist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

