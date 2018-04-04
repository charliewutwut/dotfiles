########################
#### default aliases
alias tmux="tmux -2"
alias motd="cat /etc/motd"
alias swap="swapctl -l -h"
alias mess="sudo tail -F /var/log/messages"
alias w="whois"
alias ls="ls -al"
alias top="nice top -j -P -a"
alias gstat="gstat -acosp"

alias pflog="sudo tcpdump -n -e -tttt -i pflog0"
alias ntps="sudo ntpctl -s status"
alias ntpp="sudo ntpctl -s peers"

alias dot="cd ~/.dotfiles && git pull && stow -R dotfiles && cd"



