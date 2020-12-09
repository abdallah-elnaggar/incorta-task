# incorta-task
# usage_script.sh 
The attached script is getting the percentage of cpu utilization , Disk utilization , Memory Utilization with timestap in every action in 3 seperate file under /opt directory 

also we can set a cronjob on the OS direct as alternative of ansibleplaybook .

# ansible_playbook.yml 

This yml file is deploying the usage_script.sh and schedule cronjob to run the script every 15 min 
Also it install htop pacakage and openJDK 

Usage :
ansible-playbook ansible_playbook.yml 

