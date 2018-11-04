#/bin/bash

netstat -nta|sed -nr '/^tcp /s/.*  ([1-9].*):.*/\1/p'|sort  |uniq -c |while read iplist ;do
	linknum=`echo $iplist|cut -d" " -f1`
	ip=`echo $iplist|cut -d" " -f2`
	if [ $linknum -ge 2 ];then
		echo $ip >> /data/cracker_ip.log
	fi
done
#防DDOS
