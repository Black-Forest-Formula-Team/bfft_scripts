#! /bin/bash

## follow instructions to setup: https://linuxhandbook.com/run-shell-script/

echo 'Starting ROS Core and launch file for conversion of ROSBAG to CSV files (one per topic). Parameters need to be adjusted in launch file.'

roslaunch data_to_storage ROSBAG_to_CSV.launch

echo "Bash Script ROS END"