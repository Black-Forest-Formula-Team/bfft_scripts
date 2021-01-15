#!/bin/bash

## http://ros-users.122217.n3.nabble.com/Kill-all-running-ros-processes-td763356.html

echo 'Stop all ROS-related stuff including ROSBAG recordings!'

rosnode list | grep record* | xargs rosnode kill

echo "Bash Script ROS END"