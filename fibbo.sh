# Print the Fibbonaci series upto n numbers. 
# Starting 2 numbers of fibbonaci series are 3 and 5.
# Author: Satyam Kumar [satyamkumar4@acm.org]

a=3
b=5
echo -n "Enter length of Fibonacci series: "
read n
echo "Fibonacci series is as follows: "
echo -n "$a	$b	"
for ((i=1; i<n-1; i++))
do
	c=`expr $a + $b`
	a=$b
	b=$c
	unset c
	echo -n "$b	"
done
echo
