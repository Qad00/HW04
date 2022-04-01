#!bin/bash


declare -a nums
nums=($(<num1.txt) $(<num2.txt))

calculate() {
  echo ""
  echo "num1: ${nums[0]}"
  echo "num2: ${nums[1]}"

  case $envOp in 
    1) echo "op: add"
       let result=${nums[0]}+${nums[1]};;
    2) echo "op: sub"
       let result=${nums[0]}-${nums[1]};;  
    3) echo "op: div"
       let result=${nums[0]}/${nums[1]};;  
    4) echo "op: mul"
       let result=${nums[0]}*${nums[1]};;
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

