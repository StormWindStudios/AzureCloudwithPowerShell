Connect-AzureAD
#Creating a new Security group in Azure AD
New-AzureADGroup -DisplayName "DevOps" -MailEnabled $false -SecurityEnabled $true -MailNickName "DevOps"
#Adding a member to group 
Add-AzureADGroupMember -ObjectId "3f46c7b4-ed28-477a-881b-81095be8ec2d" -RefObjectId "3fe6cbe6-6282-4939-b28d-301da51b9130"
#Remove a Member
Remove-AzureADGroupMember -MemberId "3fe6cbe6-6282-4939-b28d-301da51b9130" -ObjectId "3f46c7b4-ed28-477a-881b-81095be8ec2d"