az storage blob upload \
    --file /home/sample-files/hello-world.txt \
    --account-name $STORAGE_ACCOUNT \
    --account-key $STORAGE_KEY \
    --container-name $CONTAINER \
    --name hello-world.txt

    