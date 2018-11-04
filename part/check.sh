#/bin/bash

SLEEPTIME=30
until false ;do
	if ! killall -0 httpd &>/dev/null ;then
		service httpd restart &> /dev/null; 
		echo "At `date +'%F %T'` httpd restarted" >> /data/httpd.log
		break 
	fi
	sleep $SLEEPTIME
done

