#/bin/bash

echo "Enter your Choice"
echo "Available Choices are: "
echo "+"
echo "-"
echo "*"
echo "/"
echo "---------------------------------------------"
echo ""
read choice

echo "---------------------------------------------"
echo "your choosen choice is: $choice"
echo "---------------------------------------------"
# Use if statement here

echo "Enter 1st Number"
read x 
echo "---------------------------------------------"
echo "Enter 2nd Number"
read y
echo "---------------------------------------------"


echo "Your Output is: "
case $choice in 
'+') echo $(($x + $y));;
'-') echo $(($x - $y));;
'*') echo $(($x * $y));;
'/') echo $(($x / $y));;
*) echo "Please Enter Choice from Metnioned One"
esac

echo "---------------------------------------------"