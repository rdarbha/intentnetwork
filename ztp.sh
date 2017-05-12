#!/bin/bash

echo "deb http://repo3.cumulusnetworks.com/repo CumulusLinux-3-early-access cumulus" >> /etc/apt/sources.list

apt-get update -y

apt-get install cumulus-netq -y

netq add server 192.168.0.254
netq agent start

# CUMULUS-AUTOPROVISIONING
exit 0