# Take a string from user and check whether a file 
# with same name is present in folder if not then create a 
# a file with same name and write n nuber of lines in the 
# newly created file(n will be entered by user).
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo -n "ENter name of the file to be tested : "
read fn
if [ -f $fn ]
then
	echo "File ${fn} is present in the current directory"
else
	pwd=`pwd`
	file=$pwd"/$fn"
	echo -n "ENter number of lines to be added to file: "
	read n
	for((v=1;v<=$n;v++))
	do
		echo " This is line number ${v}" >> $file
	done
	echo $file
	#cat $file
	
fi
