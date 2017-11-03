#!/bin/bash
old_IFS=$IFS
IFS=$(echo -en "\n\b")
for f in `find /home/hp/Downloads/test/DataSet -mindepth 1 -type d` ; do
    cd $f
    echo "Now in "$f
    aria2c -i url.txt
    cd ..
done
IFS=$old_IFS
