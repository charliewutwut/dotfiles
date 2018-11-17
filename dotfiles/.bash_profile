## load .bashrc if it exsist
if [ -f ~/.bashrc ]; then
	. ~/.bashrc;
fi

# lang 
if [ $(hostname) == "ex.tjanke.dk" ]; then
	export LC_ALL=da_DK.UTF-8
	export LANG=da_DK.UTF-8
fi