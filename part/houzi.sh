
#/bin/bash

read -p "请输入天数：" day
read -p "请输入最后一天剩余个数：" sum 
let day=day-1
for i in `seq 1 $day` 
        do
		let day=day-1
                let sum=(sum+1)*2
        done
echo $sum
unset 
