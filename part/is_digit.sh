
#/bin/bash

is_digit(){
    [[ "$1" =~ ^[0-9]+$ ]] && echo digit || echo not digit
}

version(){
        sed -nr 's/.* ([0-9]+)\..*/\1/p' /etc/centos-release
}
sysinfo(){
	local name=wang
	echo sysinfo:$name
	echo Hostname is `hostname`
	echo OS version is `version`
}
ipaddr(){
	ifconfig $1|sed -nr '2s/.*inet (addr:)?([^ ]+).*/\2/p'
}
is_digit(){
	[[ "$1" =~ ^[0-9]+$ ]] && true || false
}
is_addr(){
	[[ "$1" =~ ^(([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$ ]] && true || false
}

