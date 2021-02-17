#!/bin/bash
declare -A diceRoll
diceRoll[oneCount]=0
diceRoll[twoCount]=0
diceRoll[threeCount]=0
diceRoll[fourCount]=0
diceRoll[fiveCount]=0
diceRoll[fiveCount]=0
 maxC=10
while [ ${diceRoll[onecount]} -lt $maxC ]
do
 rndNum=$((1+$RANDOM%6)) 
  if [ $rndNum -eq 1 ]
then
  diceRoll[oneCount]=$((${diceRoll[oneCount]}+1))
elif [ $rndNum -eq 2 ]
then
  diceRoll[twoCount]=$((${diceRoll[twoCount]}+1))
elif [ $rndNum -eq 3 ]
then
  diceRoll[threeCount]=$((${diceRoll[threeCount]}+1))
elif [ $rndNum -eq 4 ]
then
  diceRoll[fourCount]=$((${diceRoll[fourCount]}+1))
elif [ $rndNum -eq 5 ]
then
  diceRoll[fiveCount]=$((${diceRoll[fiveCount]}+1))
elif [ $rndNum -eq 6 ]
then
  diceRoll[sixCount]=$((${diceRoll[sixCount]}+1))

fi
done
 echo ${diceRoll[@]}
max=-999
min=999
count=0
for i in "${diceRoll[@]}"
do
   count1=1
   count2=1
if [ $i -gt $max ]
then
 max=$i
 for j in "${diceRoll[@]}"
do
 if [ $count2 -eq $count ]
 then
  maxNum=$j
fi
count2=$(($count2+1))
 done
fi
 if [ $i -lt $min ]
then
 min=$i
for k in "${!diceRoll[@]}"
do 
 if [ $count1 -eq $count ]
 then
 minNum=$k
fi
count1=$(($count1+1))
 done
fi
count=$(($count+1))
 done
echo $max $maxNum
echo $min $minNum
