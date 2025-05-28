#!/bin/bash
set -e
apt install git python3-colcon-common-extensions build-essential -y
cd /
git clone -b dev --single-branch https://github.com/Aymccar/Waf_Ros2_Bridge.git
. /opt/ros/jazzy/setup.sh
cd Waf_Ros2_Bridge/colcon_ws && colcon build
echo "$(pwd)/install/wafros2bridge/lib/" > /etc/ld.so.conf.d/wafros2bridge.conf
ldconfig
printf "ros2 for waf bridge installed"
