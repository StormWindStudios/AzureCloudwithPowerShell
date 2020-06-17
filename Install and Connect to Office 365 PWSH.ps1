$365Cred = Get-Credential
#Install the Office 365 Administrative Module
Install-Module -name AzureAD
#This installs the AzureAD v2 cmdlets, if you are with AzureAD v1 use MSOnline Module and Connect-MSolService
Connect-AzureAD -Credential $365Cred