#! /bin/bash

## follow instructions to setup: https://linuxhandbook.com/run-shell-script/

echo 'Starting ROS Core and launch file for Data collection!'

roslaunch --pid=/tmp/myroslaunch.pid bfft_can_bus_msgs_to_ros_topic Start_Data_Collection.launch &
P1=$!
cd /SSD_512/bagfiles && rosbag record -a &
P2=$!
wait $P1 $P2

echo "Bash Script ROS END"