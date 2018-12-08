# Find GCD of two numbers.
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo -n "Enter first number: "
read a
echo -n "Enter second number: "
read b
if [ $a -gt $b ]
then
	num1=$a
	num2=$b
else
	num1=$b
	num2=$a
fi
for((i=$num2; i>=0; i--)) 
do
	val1=`expr $num1 % $i`
	val2=`expr $num2 % $i`
	if [ $val1 -eq 0 -a $val2 -eq 0 ]
	then 
		echo "GCD of ${num1} and ${num2} is ${i}"
		break
	fi
done
