#*
 #* Write a shell script to take name from user and print Hello user_name.
 #* Author: Satyam Kumar. <satyamkumar4@acm.org>
 #* REpo :- ShellScript  [MIT LICENSE]
#*/

echo -n "Enter your name : "  # echo  is used to print something on console
read name		      # read is used to read value from STDIN.
echo Hello $name
echo $@
