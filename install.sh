#!/bin/bash
#title           :install.sh
#description     :Installation of dependencies and main package.
#author          :Paulo de Tarco
#date            :09-04-2019
#version         :0.1
#usage           :./install.sh

pip install configparser
pip install pyserial
pip install pyarmor

mkdir /usr/local/ge-ups-monitor
cp config.ini crontab.sh ge_ups_monitor.py license.lic pytransform.key pytransform.py _pytransform.so /usr/local/ge-ups-monitor
