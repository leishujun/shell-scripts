
#/bin/bash

n=$[RANDOM%11]
while read -p "input a 0-10 number:" num ;do
	if [ $num -gt $n ];then
		echo $num is greater
	elif [ $num -lt $n ];then
		echo $num is lower
	else
		echo "guess right!"
		break
	fi
done

#猜字谜
