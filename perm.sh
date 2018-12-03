# Take name of a folder and display the permissions of all the files inside the folder.
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo Enter THe name of directory along with its full path: 
read name
for i in `ls $name`
do
	if [ -f $i ]
	then
	
	[ -r $i ] && R=1 || R=0
	[ -x $i ] && E=1 || E=0
	[ -w $i ] && W=1 || W=0

	echo "File ${i} have following permissions: "

	if [ "$R" == "1" ]
	then
		echo  "     Have Read Permission"
	fi

	if [ "$W" == "1" ]
	then 
		echo "     Have write permission"
	fi
	
	if [ "$E" == "1" ]
	then 
		echo "     Have Execution permission"
	fi
	fi	
	
done
