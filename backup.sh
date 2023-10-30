#!/bin/bash
wordpress_dir="./html"
db_dir="./database"
backup_dir="/home/xitest//backup_directory"
backup_filename="backup_$(date +"%Y-%m-%d_%H-%M-%S").tar.gz"

cd /home/xitest/wordpress-compose
sudo tar -cvf $backup_dir/$backup_filename $wordpress_dir $db_dir