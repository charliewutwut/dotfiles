## Change prompt layout
export PS1="\[\e[33m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[36m\]\\$\[\e[m\] "

## Load bashrc if it exsist
if [ -f ~/.bashrc ]; then
	. ~/.bashrc;
fi 

## Load bash_aliases if it exsist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Lang 
if [ $(hostname) == "ex.tjanke.dk" ]; then
	export LC_ALL=da_DK.UTF-8
	export LANG=da_DK.UTF-8
fi