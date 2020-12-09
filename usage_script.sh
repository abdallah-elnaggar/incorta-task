echo -n $(date +%x_%r) " " >> /opt/DISK.CSV && df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}' >> /opt/DISK.CSV
echo -n $(date +%x_%r) " " >> /opt/CPULOAD.CSV && top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' >> /opt/CPULOAD.CSV
echo -n $(date +%x_%r) " " >> /opt/MEM.CSV &&  free -m | awk 'NR==2{printf  "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'  >> /opt/MEM.CSV
