# Take n number of elements in an array and 
# Print the sum of the elemnts of array.
echo -n "Enter size of array: "
read n
echo "Enter ${n} elements of array(One element per line) "
for((i=0; i<$n;i++))
do
	read ARR[$i]
done
sum=0
for element in ${ARR[@]}
do
	sum=$(expr $sum + $element)
done
echo $sum
