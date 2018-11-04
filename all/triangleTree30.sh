#!/bin/bash
#color=$[$RANDOM%6+1]
#backgr=$[$RANDOM%6+1]
if [ $# = 0 ];then
read -p "please one number,then print triangle:" x

	play teasong1.wav &> /dev/null & 
for i in `seq $x`
do

	let space=$x-$i
        let num=2*$i-1
	for y in `seq $space`
	do
		echo -e " \c"
	done
	for z in `seq $num` 
	do
		if [ $z = 1 ];then
		
		color=$[$RANDOM%6+1]
#        	backgr=$[$RANDOM%6+1]
		let textcolor=$color+30
        	let background=$backgr+40
		echo -e "[1;$textcolor;5m*[0;25m\c"
		elif [ $z = $num ];then
		color=$[$RANDOM%6+1]
#               backgr=$[$RANDOM%6+1]
                let textcolor=$color+30
                let background=$backgr+40
                echo -e "[1;$textcolor;5m*[0;25m\c"
		else	
		echo -e "[32m*[0m\c"
		fi
	done
	echo 
done
else
	echo -e "[1;$background;5m please input number![0;25m"
fi
