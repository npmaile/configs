#!/usr/bin/env bash
while true
do
dat=$(date +'%Y-%m-%d %l:%M %p')
bat="$(cat /sys/class/power_supply/BAT0/status) $(cat /sys/class/power_supply/BAT0/capacity)%"
echo $dat 🔋 $bat
sleep 60
done
