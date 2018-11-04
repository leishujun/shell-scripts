
#!/bin/bash

finish(){
	echo "finish"
}
trap finish   exit
for((i=1;i<=10;i++));do
	let sum+=i
	sleep 1
done
echo $sum

-----------------------
trap 'echo no exit' 2 15
trap -p 
for((i=1;i<=10;i++));do
	echo $i
	sleep 1
done
trap '' 2 15
trap -p 
for((i=11;i<=20;i++));do
        echo $i
	sleep 1
done
trap '-' 2 15
trap -p 
for((i=21;i<=30;i++));do
        echo $i
	sleep 1
done

