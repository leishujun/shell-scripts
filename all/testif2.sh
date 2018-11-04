#!/bin/bash
#
#********************************************************************
#Author:		wangxiaochun
#QQ: 			29308620
#Date: 			2018-10-31
#FileName：		testif.sh
#URL: 			http://www.magedu.com
#Description：		The test script
#Copyright (C): 	2018 All rights reserved
#********************************************************************
read -p "Please input your score: " score
if [[ !  "$score" =~ ^[0-9]+$  ]];then
	echo "please input digit"
	exit
elif [  "$score" -gt 100 ];then
	echo "Your score is false"
	exit 10
elif [ $score -lt 60 ];then
	echo "no pass"
elif [ $score -lt 80 ];then
	echo "so so"
else
	echo "very good"
fi
