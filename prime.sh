# Take a number from user and print if it is prime or not.
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo -n "Enter the number: "
read n
flag=0
if [ $n -lt 2 ]
then
	echo "${n} is not prime"
else
for((i=2; i<n-1; i++))
do
	if [ `expr $n % $i` -eq 0 ]
	then
		flag=1
		break
	fi
	
done
if [ $flag -eq 0 ] 
then
	echo "${n} is prime"
else
	echo "${n} is not prime"
fi
fi
