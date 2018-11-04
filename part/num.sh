#/bin/bash

read -p "please input a num ：" num

case $num in

1|2|3)
	echo 1,2,3
	;;
4|5|6)
	echo 4,5,6
	;;
7|8|9)
	echo 7,8,9
	;;
*)
	echo ”你再也不是我们村的骄傲了！“
	;;
esac


