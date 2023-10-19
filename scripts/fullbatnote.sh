#!/bin/bash
#
if [ "$(~/scripts/battery_percent.sh)" == "chargin" ]; then
	notify-send "Battery is Full" "Please remove charger"
elif [ "$(~/scripts/battery_percent.sh)" -gt 90 ] && [ "$(acpi | awk '{print $3}')" == "Charging," ]; then
    notify-send "Battery is Now $(~/scripts/battery_percent.sh)% Full" "Please Remove the Charger"
elif [ $(acpi | awk '{print $3}') == "Full," ]; then
    notify-send "Battery is Now 100% Full" "Please Remove the Charger"
fi


