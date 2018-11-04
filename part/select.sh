
#/bin/bash

#cat <<EOF
#1:lamian
#2:huimian
#3:gaifan
#4:jiaozi
#5:baozi
#EOF
#read -p "Please choose menu num: " menu
#case $menu in
#1|2)
#	echo "The price is 15元"
#	;;
#3|5)
#	echo "The price is 20元"
#	;;
#4)
#	echo "The price is 25元"
#	;;
#*)
#	echo "Input false"
#esac
PS3="Please input a number:"
select MENU in lamian huimian gaifan jiaozi baozi quit;do
	case $REPLY in
	1|2)
        	echo "The price is 15元"
		;;
	3|5)
        	echo "The price is 20元"
        	;;
	4)
        	echo "The price is 25元"
        ;;
	6)
		echo "bye"
		break
		;;
	*)
        	echo "Input false"
	esac	
done

