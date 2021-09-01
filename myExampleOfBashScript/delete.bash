#!/bin/bash

#delete.bash

read -p 'Enter the item number: ' item_number


data_path=$1
filename=$data_path/$item_number.item


if [ ! -r $filename ]; then
echo "ERROR: item not found " 1>&2
exit 1
fi


{
read simple_name item_name
read current_quantity max_quantity
read description

} <$filename

currentDate=(date)

rm $data_path/$item_number.item

echo "DELETED: $simple_name - $currentDate" >> $data_path/$queries.log

echo "$simple_name was sucessfully deleted."














