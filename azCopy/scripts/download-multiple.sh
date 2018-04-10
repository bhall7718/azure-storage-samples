azcopy \
    --source https://$STORAGE_ACCOUNT.blob.core.windows.net/$CONTAINER \
    --destination /home/downloads/ \
    --source-key $STORAGE_KEY \
    --recursive \
    --verbose \
    --quiet

# To Clean Up executing the following command:
# rm -rf /home/downloads
