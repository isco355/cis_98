#!/bin/bash
main_file="sqlite3_db/db/main.db"

if [ -f $main_file ]; then 

  sqlite3 $main_file < sqlite3_db/queries/reset_db.sql
  sqlite3 $main_file < sqlite3_db/queries/main.sql
else
  echo "${main_file} not found(create db file)"
fi



# Check if the user provided an argument
# if [ "$#" -ne 1 ]; then
#     echo "Usage: $0 {start|down|attach_sql| attach_terminal}"
#     exit 1
# fi
#
# # Define the action based on the argument
# ACTION=$1
#
# case $ACTION in
#     migrate)
#         echo "Starting Docker Compose services..."
#         docker compose up -d
#         ;;
#     )
#         echo "Stopping Docker Compose services..."
#         docker compose down
#         ;;
#     attach_terminal)
#         docker exec -it mysql_container /bin/bash 
#         ;;
#     attach_sql)
#         docker exec -it mysql_container  mysql -u root  --password='1234'
#         ;;
#    *)
#         echo "Invalid action: $ACTION"
#         echo "Usage: $0 start or down"
#         exit 1
#         {;;
# esac}
