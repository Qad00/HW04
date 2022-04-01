#!bin/bash

mkdir temp
echo "...create temp directory..."   


cp num1.txt num2.txt cal.sh ./temp/
echo "...copy files to temp directory..."

# set PS3 prompt 
PS3="select menu: "  

# set option list  
select op in add sub div mul
do 
  echo "...$op selected..." 
  break;  
done

export envOp=$REPLY  

echo "...run calculater..."
bash ./cal.sh 
