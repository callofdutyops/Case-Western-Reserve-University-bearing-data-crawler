#!/bin/bash
old_IFS=$IFS
SAVE_DIR=/home/hp/Downloads/test/DataSet
IFS=$(echo -en "\n\b")
for f in `find $SAVE_DIR -mindepth 1 -type d` ; do
    cd $f
    echo "Now in "$f
    aria2c -i url.txt
    cd ..
done
IFS=$old_IFS
