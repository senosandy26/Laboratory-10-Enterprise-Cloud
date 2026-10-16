# 7. Persistent Storage 

 List Docker Volume:
 docker volume ls
Inspect MySQL Volume:
 docker volume inspect lowdb_db_data
Inspect WordPress Volume:
 docker volume inspect lowdb_wordpress_data

 # 8. Firewall Security 

Reset UFW:
 sudo ufw status
Set Default deny:
 sudo ufw default deny outgoing
Allow outgoing 
 sudo ufw default allow outgoing
