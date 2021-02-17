#!/bin/bash
declare -A record
JanC=0
FebC=0
MarC=0
AprC=0
MayC=0
JunC=0
JulC=0
AugC=0
SeptC=0
OctC=0
NovC=0
DeceC=0
for ((i=1;i<=50;i++))
do
 rndNum=$((1+$RANDOM%12))
if [ $rndNum -eq 1 ]
then
   JanC=$(($JanC+1))
   record["January"]=$JanC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($FebC+1))
 record["February"]=$FebC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($MarC+1))
 record["March"]=$MarC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($AprC+1))
 record["April"]=$AprC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($MayC+1))
 record["May"]=$MayC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($JunC+1))
 record["June"]=$JunC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($JulC+1))
 record["July"]=$JulC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($AugC+1))
 record["August"]=$AugC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($SeptC+1))
 record["September"]=$SeptC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($OctC+1))
 record["October"]=$OctC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($NovC+1))
 record["November"]=$NovC
elif [ $rndNum -eq 2 ]
 then
 FebC=$(($DeceC+1))
 record["December"]=$DeceC
 fi
done
echo ${!record[@]}
echo ${record[@]}
