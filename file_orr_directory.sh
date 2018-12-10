# Check whether an user inputted string matches with 
# name of a file directory in current directory or it does not. 
# If it matches then print whether it is a file or directory.
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo "Enter The name of file: "
read fn
if [ -e $fn ]
then
	[ -f $fn ] && F=1 || F=0
	if [ "$F" == "1" ]
	then
		echo "${fn} is a File"
	else
		echo "${fn} is a Directory"
	fi
else
	echo "${fn} is not found in current directory"
fi
	
