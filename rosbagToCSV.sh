#! /bin/bash

## follow instructions to setup: https://linuxhandbook.com/run-shell-script/

echo 'Starting launch file for conversion of ROSBAG to CSV files (one per topic). Parameters need to be adjusted in launch file.'

roslaunch data_to_storage ROSBAG_to_CSV.launch
#wait $P1 $P2

echo "Bash Script ROS END"