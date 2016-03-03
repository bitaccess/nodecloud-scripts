#!/bin/bash
# to create the partitions programatically (rather than manually)
# we're going to simulate the manual input to fdisk
# The sed script strips off all the comments so that we can 
# document what we're doing in-line with the actual commands
# Note that a blank line (commented as "defualt" will send a empty
# line terminated with a newline to take the fdisk default.
sudo echo
sed -e 's/\t\([\+0-9a-zA-Z]*\)[ \t].*/\1/' << EOF | sudo fdisk /dev/xvdc
	n # new partition
	  # primary partition
	  # partition number 1
	  # default - start at beginning of disk 
          # default - end at end of disk
	w # write the partition table
EOF
echo "REBOOT AND RUN disk_setup_1.sh"
