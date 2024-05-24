# !/bin/bash

date=$(date "+%Y-%m-%d")

echo "###########################"
echo "Today Date is: ${date}"
echo "###########################"
echo -e "\n\n"

DUMP_DIR="/root/db_backups"
USERNAME="postgres"
DB_CONTAINER="prod_db"
TARGET_DB_NAME="testDB"

echo "###########################"
echo "Creating Backup"
echo "###########################"
mkdir -p $DUMP_DIR/
docker exec $DB_CONTAINER pg_dump -U $USERNAME $TARGET_DB_NAME | gzip >$DUMP_DIR/${date}_api.gz
echo "###########################"
echo "-----------Done------------"
echo "###########################"
echo -e "\n\n"
