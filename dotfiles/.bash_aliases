#### Default aliases
############################
## tmux with color ##
alias tmux="tmux -2"

## show message of teh day ##
alias motd="cat /etc/motd"

## check swap usage ##
alias swap="swapctl -l -h"

## tail /var/log/messages ##
alias mess="sudo tail -F /var/log/messages"

## whois lookup
alias w="whois"

## ls fix and colors
alias ls="ls -al"

## top with jail-id, multicore cpu and full commandline info
alias top="nice top -j -P -a"



#### Host specifik aliases



## tcpdump pflog0
alias em0="sudo tcpdump -n -e -tttt -i pflog0"

## ntp status & peers
alias ntps="sudo ntpctl -s status"
alias ntpp="sudo ntpctl -s peers"

## add ip(s) to pf table <blockedips>
alias block="sudo pfctl -t blockedips -T add"
alias b="sudo pfctl -t blockedips -T add"
alias del="sudo pfctl -t blockedips -T delete"
alias d="sudo pfctl -t blockedips -T delete"
alias blocked="sudo pfctl -t blockedips -T show"



#### Poudriere Aliases
## Update jail package system ##
alias updatejail="sudo poudriere jail -u -j FreeBSD_11-1x64"
alias apuupdatejail="sudo poudriere jail -u -j FreeBSD_11-1x64-APU"

## Fetch lastest port tree version ##
alias updateports="sudo poudriere ports -u -p HEAD"
alias apuupdateports="sudo poudriere ports -u -p HEAD-APU"
alias webupdateports="sudo poudriere ports -u -p WEB"

## Add port to package list ##
alias addport="sudo ee /usr/local/etc/poudriere.d/port-list"
alias apuaddport="sudo ee /usr/local/etc/poudriere.d/port-apu-list"
alias webaddport="sudo ee /usr/local/etc/poudriere.d/webproxy"

## Check options for new ports added ##
alias checkconfig="sudo poudriere options -j FreeBSD_11-1x64 -p HEAD -f /usr/local/etc/poudriere.d/port-list"
alias apucheckconfig="sudo poudriere options -j FreeBSD_11-1x64-APU -p HEAD-APU -f /usr/local/etc/poudriere.d/port-apu-list"
alias webcheckconfig="sudo poudriere options -j FreeBSD_11-1x64 -p WEB -f /usr/local/etc/poudriere.d/webproxy"

## Review options on all ports ##
alias checkallconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p HEAD -f /usr/local/etc/poudriere.d/port-list"
alias apucheckallconfig="sudo poudriere options -c -j FreeBSD_11-1x64-APU -p HEAD-APU -f /usr/local/etc/poudriere.d/port-apu-list"

## Start build ##
alias build="sudo poudriere bulk -j FreeBSD_11-1x64 -p HEAD -f /usr/local/etc/poudriere.d/port-list"
alias apubuild="sudo poudriere bulk -j FreeBSD_11-1x64-APU -p HEAD-APU -f /usr/local/etc/poudriere.d/port-apu-list"
alias webbuild="sudo poudriere bulk -j FreeBSD_11-1x64 -p WEB -f /usr/local/etc/poudriere.d/webproxy"

## Review config on one specific ##
alias reconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p HEAD"
alias apureconfig="sudo poudriere options -c -j FreeBSD_11-1x64-APU -p HEAD-APU"
alias webreconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p WEB"



