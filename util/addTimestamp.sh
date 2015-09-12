#!/bin/bash

now=$(date "+%Hh-%Mm-%Ss-%B-%d")
echo $now

if [ -z $1 ]
then 
    echo "please give file name"
    exit
fi


echo "file name is $1-$now" 
