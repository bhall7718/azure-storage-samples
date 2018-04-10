azcopy \
    --source https://$STORAGE_ACCOUNT.blob.core.windows.net/$CONTAINER \
    --destination /home/downloads/ \
    --source-sas $STORAGE_SAS_TOKEN \
    --recursive \
    --verbose \
    --quiet

# To Clean Up executing the following command:
# rm -rf /home/downloads
