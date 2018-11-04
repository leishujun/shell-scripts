#!/bin/bash
read -p "please input your score: " num 
if [[ "$num" =~ ^[[:digit:]]+$ ]] ; then
	true
else
	echo " please input a digit"
	exit 10
fi

if [ "$num" -ge 0 -a "$num" -lt 60 ] ; then
 	echo "below the mark"
elif [ "$num" -lt 80 ] ; then
 	echo "up to standard"
elif [ "$num" -le 100 ] ; then
     	echo "you are excellent"
elif [ "$num" -gt 100 ] ;then
   	sleep 3
	echo "Not a valid score"
fi 
