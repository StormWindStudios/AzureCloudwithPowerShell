#Add SharePoint Module and Connect ot your subscription
Import-Module -Name Microsoft.online.Sharepoint.Powershell -Verbose
$SPOCred = Get-Credential 
Connect-SPOService -Url https://Russlongstormwind-admin.sharepoint.com -Credential $SPOCred
#Bulk add a few new sites
Import-Csv C:\Sites.csv | ForEach-Object {New-SPOSite -Owner $_.Owner -StorageQuota $_.StorageQuota -Url $_.Url -NoWait -ResourceQuota $_.ResourceQuota -Template $_.Template -TimeZoneID $_.TimeZoneID -Title $_.Name}
Get-SPOSite -Detailed
#Create a new Site Group for Administration and Owership of a Site Collection
New-SPOSiteGroup -Group "Stormwind Project Leads" -PermissionLevels "Full Control" -Site "https://russlongstormwind.sharepoint.com/sites/CommunityA"