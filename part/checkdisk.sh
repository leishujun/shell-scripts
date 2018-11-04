
#/bin/bash

warning=30
df|while read diskspace;do
	space=df | sed -nr 's/^(\/dev\/sd[[:alnum:]]+) .* (.*)% .*/\2/p'
	dev=df | sed -nr 's/^(\/dev\/sd[[:alnum:]]+) .* (.*)% .*/\1/p'	
	if [[ $space =~ ^[0-9]+$ ]];then
		if [ $space -gt $warning ];then
			echo $dev:$space
		fi
	fi
done
#检查磁盘
