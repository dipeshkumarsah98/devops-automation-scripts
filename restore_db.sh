!/bin/bash

date=$(date "+%Y-%m-%d")
echo "###########################"
echo "Today Date is: ${date}"
echo "###########################"
echo -e "\n\n"

USERNAME="postgres"
BACKUP_FILE="backup.gz"
TARGET_CONTAINER_NAME="prod_db"
BACKUP_DB_NAME="phasezerodb"

echo "###########################"
echo "Restore DB"
echo "###########################"

docker cp $BACKUP_FILE prod_db:/api.gz

docker exec -i $TARGET_CONTAINER_NAME sh -c "cat /api.gz | gunzip | psql -U '$USERNAME' '$BACKUP_DB_NAME' "

docker exec $TARGET_CONTAINER_NAME rm -rf /api.gz

echo "Restore Completed"
echo -e "\n\n"
