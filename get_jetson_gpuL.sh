#! /bin/bash
echo $(/bin/cat /sys/devices/gpu.0/load)/10 | bc -l

