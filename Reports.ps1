#How to build Office 365 Reports from PowerShell
#Connect to your Subscription
Connect-AzureAD
#Next we will run a cmdlet to gather our subscrition information on Used and Unused Licenses
$SubInfo = Get-AzureADSubscribedSku | Select -Property Sku*,ConsumedUnits -ExpandProperty PrepaidUnits
#Now run this cmdlet to generate and save Web report
$SubInfo | ConvertTo-Html | Out-file -FilePath C:\Users\Dale\Documents\Report.html 

#Now we will look at how to review what Sevices are available in your subscriptions
#We need a new variable for the operation without the Select Statement
$Services = Get-AzureADSubscribedSku
#To see which services are availabe in your subscription
$Services.ServicePlans
#To save the data as a text file
$Services.SerivcePlans | Select ProvisioningStatus,SerivcePlanName | ConvertTo-Html  | Out-File -FilePath C:\Users\Dale\Documents\Sevices.Doc