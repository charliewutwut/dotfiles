# load .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# set window title to hostname
echo -e '\033]2;'$(hostname)'\007'

# lang
if [ $(hostname) == "ex.tjanke.dk" ]; then
	export LC_ALL=da_DK.UTF-8
	export LANG=da_DK.UTF-8
fi
