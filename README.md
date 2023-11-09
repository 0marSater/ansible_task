# Ansible task

he objective involves utilizing the ***Ansible Management Configuration*** tool to set up server configurations.

In essence, it entails executing the installation process, creating users, configuring firewalls, installing specific software like docker and docker-compose, deploying WordPress along with its Database, and executing daily backups at designated intervals. Detailed requirements can be found in the [pdf](xitee_devops_homework.pdf).

# xitee-homework.yaml 
This file contains the Ansible playbook for all the tasks.

# backup.sh 
This script is responsible for handling the backup of specific files as outlined in the task requirements.

# check_backup_date.sh
Another script designed to check and delete older backups, which are more than two days old, as requested in the task. 


# How to use:
1. Include your server IP in the Inventory file under the section [server].
2. Test whether Ansible can connect to the server by executing the appropriate command.
```
ansible -i Inventory --private-key <path-to-private-key> -m ping 
```
3. Run following command:

```
ansible-playbook -i Inventory --private-key <path-to-private-key> xitee-homework.yaml 
```
and all configuration will be applied.
