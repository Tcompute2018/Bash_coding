#!/bin/bash


#create bash

read -p "Item number:    " item_number 
read -p "Simple name:    " simple_name
read -p "Item name:      " item_name
read -p "Current quantity:    " current_quantity
read -p "Maximum quantity:    " maximum_quantity
read -p "Description:     " description



data_path=$1
if [ -f $data_path ]; then
filesname=$data_path/$item_number.item 
 
{
 read simple_name item_name
 read current_quantity maximum_quantity
 read description
} < $filesname
fi
update=$(date)
if [ ! -d $data_path ]; then  
mkdir $data_path   
echo "CREATED: data directory - $update" >> $data_path/$queries.log 
fi



if [ -f $data_path/$item_number.item ]; then 
echo "Error: item already exists"
else
echo "CREATED: $simple_name - $update" >> $data_path/$queries.log
echo "$simple_name $item_name" >> $data_path/$item_number.item  
echo "$current_quantity $maximum_quantity" >> $data_path/$item_number.item 
echo "$description" >> $data_path/$item_number.item 

fi















