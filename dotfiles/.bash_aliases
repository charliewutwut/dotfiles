########################
#### Shared aliases

## Make all aliases below available with sudo 
alias sudo="sudo "

## Update dotfiles
alias dot="cd ~/.dotfiles && git pull && stow -R dotfiles && cd"

## Change default "ls" behavor
alias ls="ls --color=auto"
alias ls="ls -G"
alias sl="ls"
alias la="ls -AF"
alias ll="ls -al"
alias l="ls -a"
alias l1="ls -1"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias md="mkdir -p"
alias rd="rmdir"
alias h="history"
alias c="clear"
alias k="clear"
alias cls="clear"
alias q="exit"

alias ..="cd .."         # Go up one directory'
alias cd..="cd .."       # Common misspelling for going up one directory'
alias ...="cd ../.."     # Go up two directories'
alias ....="cd ../../.." # Go up three directories'

alias py="python"
alias ipy="ipython"

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

## tmux
alias tmux="tmux -2"
alias txl="tmux ls"
alias txn="tmux new -s cyb"
alias txa="tmux a -t cyb"

## Show motd
alias motd="cat /etc/motd"

## Random
alias swap="swapctl -l -h"
alias mess="sudo tail -F /var/log/messages"
alias w="whois"
alias top="nice top -j -P -a"
alias top2="top -m io -o write -s 1"
alias gstat="gstat -acosp"
alias dig="drill"

## Edit this file
alias aliases="nano ~/.bash_aliases" # usage: type `aliases` in Terminal

## Navigate to location X
alias home="cd ~"
alias desktop="cd ~/Desktop/"
alias repos="cd ~/Documents/GitHub/"

## Navigate to ansible project directory
alias ans="clear && cd ~/Documents/GitHub/ansible/"


########################
#### Host specific
alias temp="sysctl -a | grep "dev.cpu.*.temperature""

alias pflog="sudo tcpdump -n -e -tttt -i pflog0"
alias em0="sudo tcpdump -n -e -tttt -i pflog0 | grep em0"
alias igb0="sudo tcpdump -n -e -tttt -i pflog0 | grep igb0"
alias igb1="sudo tcpdump -n -e -tttt -i pflog0 | grep igb1"
alias igb2="sudo tcpdump -n -e -tttt -i pflog0 | grep igb2"

alias ntps="sudo ntpctl -s status"
alias ntpp="sudo ntpctl -s peers"

alias mnat="sudo pfctl -a miniupnpd -s nat"
alias mrules="sudo pfctl -a miniupnpd -s rules"

alias block="sudo pfctl -t blockedips -T add"
alias b="sudo pfctl -t blockedips -T add"
alias del="sudo pfctl -t blockedips -T delete"
alias d="sudo pfctl -t blockedips -T delete"
alias blocked="sudo pfctl -t blockedips -T show"

alias boot="sudo ./wol.py igb1 2C:4D:54:52:2A:D0"
alias zupdate="sudo chown -R nobody:nobody /zbackup/share && sudo chmod -R 0755 /zbackup/share"


########################
#### Program aliases

## homebrew-cask
alias bcin="brew cask install"
alias bcrm="brew cask uninstall"
alias bczp="brew cask zap"
alias bccl="brew cask cleanup"
alias bcsr="brew cask search"
alias bcls="brew cask list"
alias bcinf="brew cask info"
alias bcdr="brew cask doctor"
alias bced="brew cask edit"

## homebrew
alias bup="brew update && brew upgrade"
alias bupc="brew update && brew upgrade --cleanup"
alias bout="brew outdated"
alias bin="brew install"
alias brm="brew uninstall"
alias bcl="brew cleanup"
alias bls="brew list"
alias bsr="brew search"
alias binf="brew info"
alias bdr="brew doctor"
alias bed="brew edit"

## osx
alias dsclean="find . -type f -name .DS_Store -delete"
alias flush="dscacheutil -flushcache"
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE"
alias copyLastCmd="fc -ln -1 | awk '\''{$1=$1}1'\'' ORS='\'''\'' | pbcopy"

## svn
alias svs="svnlite status"
alias sa="svnlite add"
alias sci="svnlite ci -m"
alias sco="svnlite co"
alias sup="svnlite up"
alias scu="svnlite cleanup"
alias sli="svnlite list"
alias sdel="svnlite delete"
alias sdif="svnlite diff"
alias slog="svnlite log"
alias smv="svnlite move"






