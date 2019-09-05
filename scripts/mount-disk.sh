#!/bin/bash
apt update
apt install xfsprogs attr -y
mkfs -t xfs /dev/vdb
echo "/dev/vdb /mnt xfs defaults 0 0" >> /etc/fstab
mount -a
