#!/bin/bash
# to create the partitions programatically (rather than manually)
# we're going to simulate the manual input to fdisk
# The sed script strips off all the comments so that we can 
# document what we're doing in-line with the actual commands
# Note that a blank line (commented as "defualt" will send a empty
# line terminated with a newline to take the fdisk default.
sudo echo
sed -e 's/\t\([\+0-9a-zA-Z]*\)[ \t].*/\1/' << EOF | sudo fdisk /dev/xvdc1
	n # new partition
	p # primary partition
	1 # partition number 1
	  # default - start at beginning of disk 
      # default - end at end of disk
	w # write the partition table
EOF
# partition it to EXT3
#sudo mkfs -t ext3 /dev/xvdc1
# Delete old fstab entry from other device.
#sed '/\/data/d' ./fstab
# Get latest UUID
#id=$(blkid /dev/xvdc1 -o value -s UUID)
#echo $id
# Add entry for new device.
#echo "UUID=$id /data           ext3    errors=remount-ro,barrier=0,noatime,nobootwait 0       1" >> /etc/fstab