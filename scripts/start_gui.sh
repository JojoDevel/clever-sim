#!/bin/bash

echo "Updating Clever image..."

/home/user/scripts/clever_update.sh

echo "Running SITL simulation"

xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T "PX4 command window" -e /bin/bash /home/user/scripts/start_px4_sitl.sh &
xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T "ROS Clever logs" -e /bin/bash /home/user/scripts/start_clever.sh &
xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T "User console" -e /bin/bash -login &

wait
