#/bin/bash
> /tmp/iplist.log
read -p "Please input a netid:(eg:192.168.34.0) " netid
netid=`echo $netid | sed -nr 's#(.*)\..*#\1#p'`
echo netid=$netid
for id in {1..254};do
	{
	if ping -c1 -w1  $netid.$id &>/dev/null ;then
		echo "$netid.$id" >> /tmp/iplist.log
		echo $netid.$id is up
	else 
		echo $netid.$id is down
	fi
	}& 
done
wait

