# Take three nubers from user and print largest of them.
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo -n "Enter first number :"
read n1
echo -n "Enter second number :"
read n2
echo -n "Enter third number :"
read n3
if [ $n1 -gt $n2 ] 
then
	if [ $n1 -gt $n3 ]
	then
		echo "Largest number is : ${n1}"
	else
		echo "Largest number is : ${n3}"
	fi
	else
	if [ $n2 -gt $n3 ]
	then
		echo "Largest number is : ${n2}"
	else
		echo "Largest number is : ${n3}"
	fi
fi		
