#We need to first create a variable for our login credentials
$Azurecred = Get-Credential
#Connect to your Azure Account
Connect-AzureAD -Credential $Azurecred
#Next is to create the a session and store it in a varialbe
$O365Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $AzureCred -Authentication Basic -AllowRedirection
#Then we load the session
Import-PSSession $O365Session

#Connecting into other Office 365 Services

#SharePoint
Install-Module Microsoft.Online.SharePoint.PowerShell
#Import Module to add cmdlets to session
Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
#Connect to your SharePoint Online Service (Note:Replace Domain name in Url to your subscription
Connect-SPOService -Url https://russlongstormwind-admin.sharepoint.com -credential $Azurecred

#Teams
Install-Module -Name MicrosoftTeams
#Import-Module to add cmdlets to session
Import-Module MicrosoftTeams
#Connect to your Teams Console
Connect-MicrosoftTeams -Credential $Azurecred

#Security and Compliance Console
#Create a Session to the Compliance Console 
$SccSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ -Credential $Azcred -Authentication "Basic" -AllowRedirection
#Connect to the Security and Compliance Console
Import-PSSession $SccSession -Prefix cc

#Connect to Exchange Online
#Use the Connect cmdlets to live access the console
Connect-ExchangeOnline -Credential $Azcred -ShowProgress 