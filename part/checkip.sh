#/bin/bash
localnet="192.168.34"
sleeptime=10
while :;do
	iplist=`lastb | grep -Eo "(([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])"|grep -v "$localnet"|sort -u`
	for ip in $iplist;do
		echo $ip
		grep "$ip" /data/crack_iplist.log &> /dev/null || echo "$ip" >> /data/crack_iplist.log
	done
	sleep $sleeptime	
done

