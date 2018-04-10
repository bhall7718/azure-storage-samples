# Must create the direcotry to land the fine in ahead of time or the
# azure-cli command will fail.
mkdir /home/downloads

az storage blob download \
    --container-name $CONTAINER \
    --name hello-world.txt \
    --file /home/downloads/hello-world.txt \
    --account-name $STORAGE_ACCOUNT \
    --sas-token $STORAGE_SAS_TOKEN

# To Clean Up executing the following command:
# rm -rf /home/downloads
