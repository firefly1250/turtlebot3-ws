#!/bin/bash
set -e

. /opt/ros/$ROS_DISTRO/setup.bash
. /opt/turtlebot3_ws/install/setup.bash

exec "$@"
