#!/bin/bash
#title           :cota.sh
#description     :Permiti o monitoramento do /home dos usuarios.
#author          :Paulo de Tarco
#date            :20181205
#version         :0.1
#usage           :./crontab.sh

BASEDIR="$(cd "$(dirname "$0")" && pwd)"

cd $BASEDIR

python $BASEDIR/ge_ups_monitor.py

