########################
#### default aliases
alias tmux="tmux -2"																												## tmux with color
alias motd="cat /etc/motd"																											## show message of teh day
alias swap="swapctl -l -h"																											## check swap usage
alias mess="sudo tail -F /var/log/messages"																							## tail /var/log/messages
alias w="whois"																														## whois lookup
alias ls="sudo ls -al"																													## ls fix and colors
alias top="nice top -j -P -a"																										## top with jail-id, multicore cpu and full commandline info


########################
#### host specific


########################
#### ex.tjanke.dk 
alias em0="sudo tcpdump -n -e -tttt -i pflog0"																						## tcpdump pflog0

alias ntps="sudo ntpctl -s status"																									## ntp status & peers
alias ntpp="sudo ntpctl -s peers"																									## ntp status & peers

alias block="sudo pfctl -t blockedips -T add"																						## add ip(s) to pf table <blockedips>
alias b="sudo pfctl -t blockedips -T add"																							## add ip(s) to pf table <blockedips>
alias del="sudo pfctl -t blockedips -T delete"																						## del ip(s) from pf table <blockedips>
alias d="sudo pfctl -t blockedips -T delete"																						## del ip(s) from pf table <blockedips>
alias blocked="sudo pfctl -t blockedips -T show"																					## list all blocked ip(s)


########################
#### poudriere 
alias updatejail="sudo poudriere jail -u -j FreeBSD_11-1x64"																		## update jail system
alias aupdatejail="sudo poudriere jail -u -j FreeBSD_11-1x64-APU"																	## update jail system
					
alias updateports="sudo poudriere ports -u -p HEAD"																					## fetch lastest port tree
alias aupdateports="sudo poudriere ports -u -p HEAD-APU"																			## fetch lastest port tree
alias wupdateports="sudo poudriere ports -u -p WEB"																					## fetch lastest port tree
													
alias addport="sudo ee /usr/local/etc/poudriere.d/port-list"																		## add port to package build list
alias aaddport="sudo ee /usr/local/etc/poudriere.d/port-apu-list"																	## add port to package build list
alias waddport="sudo ee /usr/local/etc/poudriere.d/webproxy"																		## add port to package build list

alias checkconfig="sudo poudriere options -j FreeBSD_11-1x64 -p HEAD -f /usr/local/etc/poudriere.d/port-list"						## check build options for new or changed ports
alias acheckconfig="sudo poudriere options -j FreeBSD_11-1x64-APU -p HEAD-APU -f /usr/local/etc/poudriere.d/port-apu-list"			## check build options for new or changed ports
alias wcheckconfig="sudo poudriere options -j FreeBSD_11-1x64 -p WEB -f /usr/local/etc/poudriere.d/webproxy"						## check build options for new or changed ports

alias checkallconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p HEAD -f /usr/local/etc/poudriere.d/port-list"					## review options on all ports
alias acheckallconfig="sudo poudriere options -c -j FreeBSD_11-1x64-APU -p HEAD-APU -f /usr/local/etc/poudriere.d/port-apu-list"	## review options on all ports
alias wcheckallconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p WEB -f /usr/local/etc/poudriere.d/webproxy"					## review options on all ports

alias reconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p HEAD"																## review buid options on specific port
alias areconfig="sudo poudriere options -c -j FreeBSD_11-1x64-APU -p HEAD-APU"														## review buid options on specific port
alias wreconfig="sudo poudriere options -c -j FreeBSD_11-1x64 -p WEB"																## review buid options on specific port

alias build="sudo poudriere bulk -j FreeBSD_11-1x64 -p HEAD -f /usr/local/etc/poudriere.d/port-list"								## start build process
alias abuild="sudo poudriere bulk -j FreeBSD_11-1x64-APU -p HEAD-APU -f /usr/local/etc/poudriere.d/port-apu-list"					## start build process
alias wbuild="sudo poudriere bulk -j FreeBSD_11-1x64 -p WEB -f /usr/local/etc/poudriere.d/webproxy"									## start build process


########################
#### nextcloud 
alias nextlog="sudo tail -F /usr/local/www/logs/nextcloud.log"																		## tail nextcloud log file
alias error="sudo tail -F /var/log/nginx/error.log"																					## tail nginx error log file
alias access="sudo tail -F /var/log/nginx/access.log"																				## tail nginx access log file

alias occ="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ"																## run nextcloud admin tool
alias ncsettings="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ config:list | more"									## list all nextcloud settings from config.php
alias ncconfig="sudo ee /usr/local/www/nextcloud/config/config.php"																	## edit nextcloud config.php

alias ncupgrade="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ upgrade"												## run nextcloud upgrade process
alias check-core="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ integrity:check-core"									## check integrity of core code
alias cleanup="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ files:cleanup"											## cleanup filecache
alias scan="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ files:scan"													## rescan nextcloud filesystem
alias scan-app-data="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ files:scan-app-data"								## rescan nextcloud appdata folder
alias update-db="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ maintenance:mimetype:update-db"						## update mimetypes and filecache
alias prevall="sudo -u www /usr/local/bin/php /usr/local/www/nextcloud/occ preview:generate-all"									## nextcloud app: preview:generate-all


########################
#### syslog 
alias stuen="sudo tail -F /var/log/syslog-ng/unifi-livingroom.home.tjanke.dk.syslog.log"											## tail unifi ap livingroom
alias koekken="sudo tail -F /var/log/syslog-ng/unifi-kitchen.home.tjanke.dk.syslog.log"												## tail unifi ap kitchen
alias rpi2="sudo tail -F /var/log/syslog-ng/rpi2-bedroom.home.tjanke.dk.syslog.log"													## tail rpi2
alias rpi3="sudo tail -F /var/log/syslog-ng/rpi3-livingroom.home.tjanke.dk.syslog.log"												## tail rpi3


########################
#### unifi
alias server="sudo tail -F /usr/local/share/java/unifi/logs/server.log"																## tail unifi server log
alias mongodb="sudo tail -F /usr/local/share/java/unifi/logs/mongod.log"															## tail unifi mongodb log
alias editunifi="sudo ee /usr/local/share/java/unifi/data/system.properties"														## edit unifi system file



