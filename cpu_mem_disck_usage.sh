#!/bin/sh  
PRG="$0"
PRGDIR=`dirname "$PRG"`
[ -z "$LT_HOME" ] && LT_HOME=`cd "$PRGDIR/.." ; pwd`
cd $LT_HOME
#echo "TIME_STAMP, Usage%" | tee -a scripts/MEM.CSV
while :
do

DATE=`date +"%H:%M:%S:%s%:z"`

echo -n "$DATE, " | tee -a scripts/MEM.CSV 
nohup free -m | awk 'NR==2{printf " %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' >> scripts/MEM.CSV 2>&1
sleep 10
done

#df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
#top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'

 
