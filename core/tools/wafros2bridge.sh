#!/bin/bash
set -e
apt install git python3-colcon-common-extensions build-essential -y
mkdir -p /colcon_ws/src
git clone -b dev --single-branch https://github.com/Aymccar/Waf_Ros2_Bridge.git /colcon_ws/src/Waf_Ros2_Bridge
. /opt/ros/jazzy/setup.sh
cd /colcon_ws && colcon build
echo "/colcon_ws/install/wafros2bridge/lib/" > /etc/ld.so.conf.d/wafros2bridge.conf
ldconfig
printf "ros2 for waf bridge installed"
