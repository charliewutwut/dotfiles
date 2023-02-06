#!/usr/bin/env bash
########################
#### Shared aliases

## Enable sudo on aliases
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
alias tmux="nice tmux -2"
alias txl="tmux ls"
alias txn="tmux new -s cyb"
alias txa="tmux attach-session"

## Show motd
alias motd="cat /etc/motd.template"

## Random
alias swap="nice swapctl -l -h"
alias mess="sudo tail -F /var/log/messages"
alias maillog="sudo tail -F /var/log/maillog"
alias slog="sudo tail -F /var/log/supervisord.log"
alias pqlog="sudo tail -F /var/log/postgresql.log"
alias palog="sudo tail -F /var/log/patroni/patroni.log"
alias w="nice whois"
alias top="nice top -j -P -a"
alias top2="nice top -m io -o write -s 1"
alias gstat="nice gstat -copI 1s"
alias air="screen /dev/cu.Airconsole-1 115200"
alias air2="screen /dev/cu.Airconsole-1 9600"
alias getcert="sudo -u certgrinder /usr/local/bin/certgrinder --config-file /usr/local/etc/certgrinder/certgrinder.conf --quiet --now periodic"
alias fixperl="export LANGUAGE=en_US.UTF-8 && export LANG=en_US.UTF-8 && export LC_ALL=en_US.UTF-8 && sudo locale-gen en_US.UTF-8 && sudo dpkg-reconfigure locales"

## Navigate to location X
alias home="cd ~"
alias desktop="cd ~/Desktop/"
alias repos="cd ~/Documents/GitHub/"


########################
#### Host specific
alias temp="sysctl -a | grep "dev.cpu.*.temperature""

alias pflog="sudo tcpdump -n -e -tttt -i pflog0"
alias em0="sudo tcpdump -n -e -tttt -i pflog0 | grep em0"
alias igb="sudo tcpdump -n -e -tttt -i pflog0 | grep -w 'igb[0-2]'"
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

alias boot="sudo ./wol.py igb0 2C:4D:54:52:2A:D0"
alias zupdate="sudo chown -R nobody:nobody /data/share && sudo chmod -R 0777 /data/share"
alias zcleanup="printf 'find /data/share/ -name Sample -exec rm -rf {} \; \nfind /data/share/ -type f -name "*.no.*" -exec rm -f {} \; \n'"


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
alias dsclean="find . -type f -name '*.DS_Store' -ls -delete"
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE"
alias copyLastCmd="fc -ln -1 | awk '\''{$1=$1}1'\'' ORS='\'''\'' | pbcopy"








