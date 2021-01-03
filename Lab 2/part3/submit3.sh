#!/bin/bash

i="3"
DATE=`date +%s`
TMP="/tmp/submit$i-$DATE"

echo "This script will create an archive named:"
echo ""
echo "$USER-submit$i-$DATE.tar.gz" in the current directory.
echo ""
echo "This file will contain:"
echo "	* /usr/lib/cgi-bin/FCCU.php"
echo "	* /root/part$i"
echo "	* /root/exploit$i.txt"
echo ""
echo "The script restore$i.sh will restore these files."

sudo mkdir $TMP
sudo cp -a /usr/lib/cgi-bin/FCCU.php $TMP
sudo cp -ar /root/part$i $TMP
sudo cp -a /root/exploit$i.txt $TMP

sudo tar -czf $USER-exploits$i-$DATE.tar.gz $TMP
