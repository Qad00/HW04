#!bin/bash


let a=$(<num1.txt)   
let b=$(<num2.txt) 

calculate() {
  echo ""
  echo "num1: $a"
  echo "num2: $b"

  case $envOp in 
    1) echo "op: add"
       let result=$a+$b;;
    2) echo "op: sub"
       let result=$a-$b;;  
    3) echo "op: div"
       let result=$a/$b;;  
    4) echo "op: mul"
       let result=$a*$b;;
    *) echo "Invalid choice!"; exit 1;;
  esac
  
  echo "result: " $result
}
if [[ -z "${envOp}" ]]; then 
  echo "...none operator parameter..." 
  echo "1) add"
  echo "2) sub"
  echo "3) div"
  echo "4) mul"
  read -p "select menu: " envOp  
  calculate  
else 

  calculate
fi

