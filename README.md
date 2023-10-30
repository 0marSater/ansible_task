# Ansible task

It is a task to perform server configuration using ***Ansible*** Managment Configuration tool. 

In less, the task is to perform installtion, create user, setting up firewalls, install certain sofwtares such as docker and docker-compose, deploy WordPress with its Database, and do a daily backup at specific times. You can refere to the all Requirments here [here](link to task pdf.)

# xitee-homework.yaml 
Contain the playbook of ansible all tasks 

# backup.sh 
A script handle the backup of certain files provdied in the task requirments 

# check_backup_date.sh
Another script to check and delete old backup that is more than two days ago as demand in the task 

# How to use 
- Add ur server to Inventroy file under `[server]`
- Test if ansible can reach the server by excuting
```
ansible -i inventory --private-key <path-to-private-key> -m ping 
```
- run following command:
```
ansible-playbook -i Inventory --private-key <path-to-private-key> xitee-homework.yaml 
```
and all configuration will be applied.