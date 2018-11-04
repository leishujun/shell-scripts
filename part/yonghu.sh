
#/bin/bash

while read line;do
	uid=`echo $line|cut -d: -f3`
	username=`echo $line|cut -d: -f1`
	if [ $uid -ge 1000 ];then
		echo $username:$uid
	fi
done < /etc/passwd

