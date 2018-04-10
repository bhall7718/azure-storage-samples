azcopy \
    --source https://$STORAGE_ACCOUNT.blob.core.windows.net/$CONTAINER/hello-world.txt \
    --destination /home/downloads/hello-world.txt \
    --source-key $STORAGE_KEY \
    --verbose \
    --quiet

# To Clean Up executing the following command:
# rm -rf /home/downloads