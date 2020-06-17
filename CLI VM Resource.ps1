#Connect to your AZ Account
Connect-AzAccount
#Create a Resource Group for the new Linux VM
az group create --name "LinuxVM-RSG" --location "eastus"
#Now create a new Linux VM
az vm create -g "LinuxVM-RSG" --name "Linux-VM" --image "UbuntuLTS" --admin-username "student" --admin-password "Pa$$w0rd" --location "EastUS"
#Add a Netowrk Security Group to allow ssh communication to the Host
az vm open-port --port 80 -g "LinuxVM-RSG" --name "Linux-VM"
#Use PUTTY or another Terminal Emulator to connect to VM
#in the PUTTY tool type
# ssh <ipaddress> to the VM in Azure
#Add NGINX resource to Linux VM
#!/bin/bash
# update package source
apt-get -y update
# install NGINX
apt-get -y install nginx