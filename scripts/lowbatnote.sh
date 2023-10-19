#!/bin/bash

if [[ $(~/scripts/battery_percent.sh) -lt 20 ]] && [[ "$(acpi)" == *"Discharging,"* ]]
    then
    notify-send "BATTERY is LOWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW" "Only $(~/scripts/battery_percent.sh)% Remaining"
fi
