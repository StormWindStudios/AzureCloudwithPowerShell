$AzCred = Get-Credential -UserName testuser@azuredomain1000.onmicrosoft.com
#Credentials are saved in a varialbe and will be passed into the login command
az login -u $AzCred.UserName -p $AzCred.GetNetworkCredential().Password
#To see the details and verify the correct subscription 
AZ Account show
#To log in to a multi-tenant Azure conifguration, specify the tenant name
az login --tenant "tenantname"