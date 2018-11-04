#/bin/bash
read -p "please input a number:" num

if [[ "$num" =~ ^[0-9]+$  ]] ;then
	true
else
	echo "咱能不能不皮这一下？"
	exit 1
fi

if [ "$num" -eq 0 ] ;then
	echo "从幼儿园开始吧"
elif [ "$num" -lt 60 ] ;then
	echo "有点东西"
elif [ "$num" -lt 80 ] ;then
	echo "小伙子，飘一下啊！"
elif [ "$num" -lt 100 ] ;then
	echo "卧槽，天才"
elif [ "$num" -eq 100 ] ;then
	echo "是人是鬼？"
elif [ "$num" -gt 100 ] ;then
	echo 诶，你他娘还真是个人才!最高才100,你能考$num!
fi

unset num
