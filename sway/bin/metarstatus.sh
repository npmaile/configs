#!/usr/bin/env bash
while true
do
metar=$(curl -s 'https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=csv&stationString=KATL&hoursBeforeNow=2&mostRecent=true' | tail -n1 | cut -d, -f1)
if [ "${metar}" != "" ]; then
	metar=🛩️$metar🛩️
fi
dat=$(date +'%Y-%m-%d %l:%M %p')
echo $metar $dat
sleep 60
done
