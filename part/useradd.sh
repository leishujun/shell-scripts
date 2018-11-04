
read -p "please input account : " i
useradd $i 
if [ "$?" -eq 0 ] ;then
	passwd=`openssl rand -base 6`
	echo "$passwd" | passwd --stdin $i
	echo "your passwd $passwd is taken succcessfuly!"
else
	echo "$i is exit ,here is the "$i"'s information"
	echo `id $i`
fi

---------------------------------------------------

while : ;do
	[ -z "$1" ] && break
	useradd $1 && echo $1 is created
	shift 
done

