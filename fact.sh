# Print the factorial of given number.
# Author: Satyam Kumar [satyamkumar4@acm.org]
echo -n "Enter the number: "
read n
res=1
for((i=n; i>1; i--))
do
	res=`expr $res \\* $i`
done
echo "The factorial of ${n} is ${res}"
num=5
b=10
unset res
res = `expr $b \\/ $a`
echo $res
