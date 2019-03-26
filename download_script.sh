#!/bin/bash


counter=0
set -f

echo "I work here"
cat rest_of_addresses
for i in $(cat < rest_of_addresses)
do
echo '$i'
wget --recursive -e robots=off --reject "index.html" --no-host-directories --cut-dirs=6 $i -P /mnt/data/Download
sleep 10
done

