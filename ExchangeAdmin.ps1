#Install ExchangeOnlineMnangement Version2
Install-Module -Name ExchangeOnlineManagement
#Connect to Exchange Online
$ExchangeCred = Get-Credential
Connect-ExchangeOnline -Credential $ExchangeCred -ShowProgress $true
#Creating a New Mainbox User
$password = Read-Host "Enter password" -AsSecureString; New-Mailbox -UserPrincipalName randall@russlongstormwind.onmicrosoft.com -Alias Randy -Name RandallFlagg -OrganizationalUnit Users -Password $password -FirstName Randall -LastName Flagg -DisplayName "Randall Flagg" -ResetPasswordOnNextLogon $true
#Creating a Distirbution Group

#Creating a mail-enabled Security Group

#Migrating a user mailbox

#Enabling Litagation Hold

#Reporting in Exchange Online