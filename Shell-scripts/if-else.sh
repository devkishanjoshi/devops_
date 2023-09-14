#/bin/bash

echo "Please Enter your Age: "
read age

if [ $age -ge 18 ]
then
        echo "You are eligible"
else
        echo "you are not eligible"
fi