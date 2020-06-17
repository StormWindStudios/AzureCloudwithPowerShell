$Cred = Get-Credential
#Connect to Subscription
Connect-AzAccount -Credential $cred
#Create a ResourceGroup to hold the New Azure VM
New-AzResourceGroup -Name "DemoVM-RSG-1" -Location "EastUS"
#Create a New Windows VM inside the ResourceGroup just created
New-AzVm -ResourceGroupName "DemoVM-RSG-1" -Name "Win-VM" -Location "EastUS" -VirtualNetworkName "WinVM-Vnet" -SubnetName "WinSubnet" -SecurityGroupName "Win-NSG" -PublicIPAddressName "Win-PIP" -OpenPorts 80,3389
#Add User and Password and wait for completion

#Next we will connect to the newly created Windows Azure VM
#First, we need the Public Ip Address for the New Azure VM
Get-AzPublicIpAddress -ResourceGroupName "DemoVM-RSG-1" | Select "IpAddress"
#Use the IP address output to connect via Remote Desktop to the new Azure VM
mstsc /v:<IpAddress>