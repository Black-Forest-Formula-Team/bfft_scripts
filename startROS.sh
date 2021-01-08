#! /bin/bash

## follow instructions to setup: https://linuxhandbook.com/run-shell-script/

echo 'Starting ROS Core and launch file for Data collection!'

roslaunch convert_can_data_to_topic Start_Data_Collection.launch

echo "Bash Script ROS END"