
# Tell OSX Catalina to be quiet about the new zsh shell
export BASH_SILENCE_DEPRECATION_WARNING=1

# set window title to hostname
echo -e '\033]2;'$(hostname)'\007'

## Load .bashrc if it exsist
if [ -f ~/.bashrc ]; then
	. ~/.bashrc;
fi

## Load aliases, if it exsist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## Load bash_aliases2 if it exsist. Used for local aliases
if [ -f ~/.bash_aliases2 ]; then
    . ~/.bash_aliases2
fi

# Lang
if [ $(hostname) == "ex.tjanke.dk" ]; then
	export LC_ALL=da_DK.UTF-8
	export LANG=da_DK.UTF-8
fi

## iTerm2 BASH integration in BASH
#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

## Bash completion
#[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh" && . "/usr/local/etc/bash_completion.d/ssh"