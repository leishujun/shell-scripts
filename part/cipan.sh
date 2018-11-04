
#/bin/bash




df|while read line ;do
	sd=`grep "^/dev/sd" | cut -d' ' -f 1`
	used=`grep "^/dev/sd" | tr -s ' ' '%' | cut -d% -f 5`
	if [ "$used" -gt 80 ];then
		echo $sd:$used
	fi
done < f1	

