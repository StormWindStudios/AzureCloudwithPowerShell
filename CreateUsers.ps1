#Login to authenticate to Azure
Connect-AzureAD #enter your email credential and password
#create a new users in Azure AD using the Password Object created in earlier lesson
New-AzureADUser -DisplayName "New User" -PasswordProfile $PasswordProfile -UserPrincipalName "NewUser@contoso.com" -AccountEnabled $true -MailNickName "Newuser"