#/bin/bash


read -p "input n :" n
for i in `seq $n`;do {
	for p in `seq $n`;do
		ping -c1 -w1 192.168.$i.$p  &> /dev/null
		if [ "$?" -eq 0 ] ;then
			echo 192.168."$i".$p is up
		fi
	done }&
done

