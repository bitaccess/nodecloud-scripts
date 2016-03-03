#!/bin/bash
sudo echo
# Delete old fstab entry from other device.
sudo sed '/\/data/d' /etc/fstab | sudo tee /etc/fstab
# Get latest UUID
id=$(blkid /dev/xvdc1 -o value -s UUID)
#echo $id
# Add entry for new device.
echo "UUID=$id /data           ext3    errors=remount-ro,barrier=0,noatime,nobootwait 0       1" | sudo tee --append /etc/fstab
