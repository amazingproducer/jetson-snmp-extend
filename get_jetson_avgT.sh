#! /bin/bash
echo $(/bin/cat /sys/class/thermal/thermal_zone5/temp)/1000 | bc -l

