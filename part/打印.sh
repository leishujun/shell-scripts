#/bin/bash
read -p "please input colume: "  col
read -p "please input line: "  line
for i in `seq $line`;do
	for j in `seq $col`;do
		COLOR=$[RANDOM%7+31]
		echo -e "\033[1;5;${COLOR}m*\033[0m\c"
	done
	echo 
done


-------------------------------------------------

read -p "please input colume: "  col
read -p "please input line: "  line
for i in `seq $line`;do
	for j in `seq $col`;do
		if [ $i -eq 1 -o $i -eq $line -o $j -eq 1 -o $j -eq $col ];then
			COLOR=$[RANDOM%7+31]
			echo -e "\033[1;5;${COLOR}m*\033[0m\c"
		else
			echo -e "*\c"
		fi
	done
	echo 
done

-------------------------------------------------

正方形


read -p "please input colume: "  col
read -p "please input line: "  line
for i in `seq $line`;do
	for j in `seq $col`;do
		#if [ $i -eq 1 -o $i -eq $line -o $j -eq 1 -o $j -eq $col ];then
		#	COLOR=$[RANDOM%7+31]
		#	echo -e "\033[1;5;${COLOR}m*\033[0m\c"
		#else
		#	echo -e "*\c"
		#fi
		case $i in
		1|$line)
			COLOR=$[RANDOM%7+31]
			echo -e "\033[1;5;${COLOR}m*\033[0m\c"
			;;
		*)

	        	case $j in
                	1|$col)
                	        COLOR=$[RANDOM%7+31]
                	       	echo -e "\033[1;5;${COLOR}m*\033[0m\c"
                        	;;
                	*)
                	        echo -e "*\c" 	
			esac
		esac
	done
	echo 
done





-------------------------------------------------------------------------
三角形


read -p "please input line: " line
for i in `seq $line`;do
	let star=i*2-1
	for j in `seq $star`;do
		let space=$line-i
		for space in  `seq $line`  ;do
  		echo -e "*\c"
		done
	done
	echo 
done




-------------------------------------------------------------------------
等腰三角形

read -p "Please input line: " line
for i in `seq $line`;do
	let star=$i*2-1
	let space=$line-$i
	for j in `seq $space`;do
		echo -n " "
	done
	for k in `seq $star`;do
		echo -n "*"
	done
	echo
done

------------------------------------------
乘法表

num=9
for i in `seq $num`;do
	for j in `seq $i`;do
		echo -e "$j*$i=$[i*j]\t\c"
	done
	echo
done



------------------------------------------
踢出黑客
while : ;do
 	iplist=`who | sed -rn '/^cracker/s/.*\((.*)\)/\1/p'`
	[ "$iplist" ] && pkill -9 -U cracker && echo "cracker is killed"
	sleep  10
done

--------------------------------------
踢出黑客
while : ;do
 	iplist=`who | sed -rn '/^cracker/s/.*\((.*)\)/\1/p'`
	if [ "$iplist" ] ;then
		pkill -9 -U cracker 
		echo "cracker is killed"
		echo sshd:$iplist >> /etc/hosts.deny 
	fi
	sleep  10
done



