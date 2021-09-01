#!/bin/bash

#read.bash

read -p 'Enter the item number: ' item_num
data_path=$1
filename=$data_path/$item_num.item


if [ ! -r $filename ]; then
echo "ERROR: item not found " 1>&2
exit 1
fi


{
read simple_name item_name
read current_quantity max_quantity
read description

} <$filename



echo "Item Name: $item_name"
echo "Simple Name: $simple_name"
echo "Item Number: $item_num"
echo "Qty: $current_quantity/$max_quantity"
echo "Description: $description"












