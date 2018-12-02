# Basic Arithmatic operaions (Addition, SUbstraction, Multiplication and Divison).
# Author: Satyam Kumar [satyamkumar4@acm.org]

echo -n "Enter first number: "
read n1
echo -n "ENter 2nd number : "
read n2

sum=`expr $n1 + $n2`
echo Addition of ${n1} and ${n2} is : ${sum}

subs=`expr $n1 - $n2`
echo Substraction of ${n1} and ${n2} is : ${subs}

mult=`expr $n1 \\* $n2`
echo Multiplication of ${n1} and ${n2} is : ${mult}

div=`expr $n1 \\/ $n2`
echo Division of ${n1} by ${n2} gives : ${div}
