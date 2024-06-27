#!/bin/bash

# Define your name
your_name="Your Name"

# Get CPU details
cpu_details=$(lscpu | grep "Model name" | awk -F: "{print \$2}" | sed "s/^ *//g")

# Get RAM details
ram_details=$(free -h | grep "Mem:" | awk "{print \$2}")

# Get HDD details
hdd_details=$(df -h --total | grep "total" | awk "{print \$2}")

# Output the details in the desired format
echo "name:$your_name"
echo "cpu:$cpu_details"
echo "ram:$ram_details"
echo "hdd:$hdd_details"

