#!/bin/bash

#update. bash

read -p "Item number: " item_num
read -p "Simple name: " new_simple_name
read -p "item name: " string_item
read -p "Current: quantity: " current_int
read -p "Maximum: quantity: " maximum_quan
read -p "Description: " string_description

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



current_date=$(date)


if [[ -z $new_simple_name ]]; then
   simple_name=$simple_name;
else
  simple_name=$new_simple_name;
  
echo  "UPDATED: $simple_name - $current_date" >> $data_path/$queries.log
fi

if [[ -z $string_item ]]; then
  item_name=$item_name;
 else 
   item_name=$string_item;
 
fi

if [[ -z $current_int ]]; then
 current_quantity=$current_quantity;
else 
  current_quantity=$current_int;
 
fi


if [[ -z $maximum_quan ]]; then
 max_quantity=$max_quantity;
else 
  max_quantity=$maximum_quan;
 
fi


if [[ -z $string_description ]]; then
 description=$description;
else 
 description=$string_description;
 
fi








