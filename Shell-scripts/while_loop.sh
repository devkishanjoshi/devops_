#/bin/bash

count=0
num=100


while [ $count -le $num ]
do 
  echo $count
  let count++
done