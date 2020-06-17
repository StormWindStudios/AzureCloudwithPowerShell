#Create a Session to the Compliance Console 
$SccSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ -Credential $Azcred -Authentication "Basic" -AllowRedirection
#Connect to the Security and Compliance Console
Import-PSSession $SccSession -Prefix cc  
#Run a Compliance Search on a user's mailbox and storage
New-ComplianceSearch -Name "Conner McCay PHI" -ExchangeLocation .conner@russlongstormwind.onmicrosoft.com -AllowNotFoundExchangeLocationsEnabled $true
Get-ComplianceSearch
#Create and View DLP Policies
New-DlpPolicy -Name "Stormwind PII" -Template "U.S. Personally Identifiable Information (PII) Data"
Get-DlpCompliancePolicy
#Create a new Advanced eDiscovery Case
New-ComplianceCase -Name "DemoCase" -CaseType AdvancedEdiscovery -ExternalId "Conner McCay vs State of CA"
#Add a Case Manager
Add-ComplianceCaseMember -Case "Conner McCay vs State of CA" -Member dale.hill@russlongstormwind.onmicrosoft.com
#Run a Report on Data Retention
Get-DataRetentionReport -StartDate 06/01/2020 -EndDate 06/08/2020
