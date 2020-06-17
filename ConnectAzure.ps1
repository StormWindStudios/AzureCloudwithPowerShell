$azcred = Get-Credential 
#This is to save login credential to a variable
Connect-AzureAD -Credential $azcred
#Once connected we will run verification commands
Get-AzureSubscription -Default
Get-AzureADUser -all
Get-AzureADUserMembership -all
