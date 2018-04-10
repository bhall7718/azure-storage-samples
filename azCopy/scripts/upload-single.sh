azcopy \
    --source /home/sample-files/hello-world.txt \
    --destination https://$STORAGE_ACCOUNT.blob.core.windows.net/$CONTAINER/hello-world.txt \
    --dest-key $STORAGE_KEY \
    --verbose \
    --quiet