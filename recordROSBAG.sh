#! /bin/bash

## follow instructions to setup: https://linuxhandbook.com/run-shell-script/

echo 'Starting Recording of CSV File. Parameters need to be adjusted in launch file.'

cd /SSD_512/bagfiles && rosbag record -a 

echo "Bash Script ROS END"