#!/bin/bash

echo 'Stop all ROS-related stuff including ROSBAG recordings!'

rosnode list | grep record* | xargs rosnode kill

kill -INT `cat /tmp/myroslaunch.pid` 

roslaunch bfft_data_conversion ROSBAG_to_CSV.launch

echo "Bash Script ROS END"

## http://ros-users.122217.n3.nabble.com/Kill-all-running-ros-processes-td763356.html
