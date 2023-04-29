#!/bin/bash
if [ $EUID -ne 0 ]
then
    echo ""
    echo "Please run wuth sudo"
    echo ""
    exit
fi
wget https://raw.githubusercontent.com/Luismm2311/vCareSystem/master/vCareSystem
chmod +x vCareSystem
mv -f vCareSystem /usr/bin/vCareSystem
echo "vCareSystem installed"
echo "Run vCareSystem with sudo vCareSystem"
sudo nala install deborphan -y
sudo vCareSystem
