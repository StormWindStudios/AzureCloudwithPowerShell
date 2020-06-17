#Install and Import the Teams PowerShell Module
Install-Module MicrosoftTeams
Import-Module MicrosoftTeams
#Create your login credential
$TeamsCred = Get-Credential
#Connect to the Teams PowerShell console
Connect-MicrosoftTeams -Credential $TeamsCred
#Create a new Team
New-Team -DisplayName StormwindComs -Description "All Staff Messageboard" -Owner "dale.hill@russlongstormwind.onmicrosoft.com" -AllowDeleteChannels $true -AllowCreateUpdateChannels $true
#Create a Channel for Special Announcements
New-TeamChannel -GroupId "b364195b-47e9-4c97-8876-444d922a931c" -DisplayName "Special Announcements"
#Add an owener and new user to the team

Add-TeamUser -GroupId "b364195b-47e9-4c97-8876-444d922a931c" -User "Conner@russlongstormwind.onmicrosoft.com" -role Member
#Remove a team member
Remove-TeamUser -GroupId "b364195b-47e9-4c97-8876-444d922a931c" -User "Conner@russlongstormwind.onmicrosoft.com"
#To List Teams
Get-Team | Select DisplayName,Description
