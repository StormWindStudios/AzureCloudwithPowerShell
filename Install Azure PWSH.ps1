$PSVersionTable.PSVersion #verifying the correct version is installed (Win 10 has the correct version)
#Install-Module -Name Az -AllowClobber -Scope CurrentUser
Install-Module -Name Az -AllowClobber -Scope AllUsers
#User has to type Y to accept the repository
#Can also download the Moduel from https://github.com/Azure/azure-powershell/releases/tag/v3.5.0-February2020