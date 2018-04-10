azcopy \
    --source /home/sample-files \
    --destination https://$STORAGE_ACCOUNT.blob.core.windows.net/$CONTAINER \
    --dest-key $STORAGE_KEY \
    --recursive \
    --verbose \
    --quiet