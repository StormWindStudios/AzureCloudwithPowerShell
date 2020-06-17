#Save your login credentials
$credential = Get-Credential 
#Pass your login credntials to Azure
Connect-AzureAD -Credential $credential
#Create and Store a Password Object for bulk users creation
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
#Modify the variable with the password value for thenew users
$PasswordProfile.Password = "Password"
#Force Password CHange at fitst login
$PasswordProfile.ForceChangePasswordNextLogin = $true
#Enforce the change Password Policy
$PasswordProfile.EnforceChangePasswordPolicy = $true