#!/bin/bash

scissors=2
if [ $(acpi | awk '{print $4}') == '100%' ]; then
    # because when 100%, there is no comma
    scissors=1
fi

# the scissors variable is for cutting out the comma and percentage

myPercent=$( mypercent=$(acpi | awk '{print $4}') && mylength=$(echo "${#mypercent}-$scissors" | bc -l) && echo ${mypercent:0:$mylength} )

echo $myPercent
