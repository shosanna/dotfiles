#!/bin/sh

while true; do
  BAT=$(cat /sys/class/power_supply/BAT0/capacity)
  VOL=$(amixer get Master | tail -n 1 | awk '{ print $5 }')
  DATE=$(date "+%d.%m.%Y (%A)")
  TIME=$(date "+%X")

  xsetroot -name "b: [$BAT%], vol: $VOL, $DATE $TIME"
  sleep 5
done
