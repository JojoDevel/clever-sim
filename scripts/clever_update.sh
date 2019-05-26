#!/bin/bash

cd /home/user/clever
git pull

cd /home/user/catkin_ws
. /opt/ros/melodic/setup.bash
. /home/user/catkin_ws/devel/setup.bash
catkin build

