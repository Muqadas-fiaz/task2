#!/bin/bash

# Define your name
your_name="Muqadas fiaZ hussain"

# my cpu detail is here
cpu_details=$(lscpu | grep 'Model name' | awk -F: '{print $2}' | sed 's/^ *//g')

# my system ram detail is here
ram_details=$(free -h | grep 'Mem:' | awk '{print $2}')

# my system HDD detail is here
hdd_details=$(df -h --total | grep 'total' | awk '{print $2}')


