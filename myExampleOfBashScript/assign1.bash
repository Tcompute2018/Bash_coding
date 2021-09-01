#!/bin/bash
#assign.bash


if [ "$#" -ne 1 ]; then
    echo "Format: $0 data_path"
    exit 1
fi
data_path=$1

righ=0
while [ $righ ]; do

echo "Enter one of the following actions or press CTRL-D to exit."
echo""
echo "C - create a new item"
echo ""
echo "R - read an existing item"
echo ""
echo "U - update an existing item"
echo ""
echo "D - delete an existing item"
echo ""

if ! read ans; then
break 
fi
case "$ans" in
 [Cc])./create.bash $data_path
continue;;
 [Rr])./read.bash $data_path
continue;;
 [Uu])./update.bash $data_path
continue;;
 [Dd])./delete.bash $data_path
continue;;
*) echo "invalid action" 


esac

done





