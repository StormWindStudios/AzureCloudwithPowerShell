#Creating and Managing Azure Ad Groups and Group Membership
AZ Login
#Create a new Security Group 
az ad group create --display-name "Demo-Group" --mail-nickname "Demo"
#Adding members to the group
az ad group member add --group "Demo" --member-id "ff567a99-c38f-46a6-bdc5-3169d0c8f5d3"
az ad group member add --group "Demo" --member-id "ca973d14-38fc-433c-89b9-f1d4bcc8b0f1"
#View the Group Membership
az ad group member list --group "Demo"
#Check to see if a user is part a group using user's object(member id)
az ad group member check --group "Demo" --member-id "ca973d14-38fc-433c-89b9-f1d4bcc8b0f1"
#Removing a group member
az ad group member remove --group "Demo" --member-id "ca973d14-38fc-433c-89b9-f1d4bcc8b0f1"
#Verify the user's removal
az ad group member list --group "Demo"
#or
az ad group member check --group "Demo" --member-id "ca973d14-38fc-433c-89b9-f1d4bcc8b0f1"
#Remove the group from Azure AD
az ad group delete --group "Demo"
#Verify Removal
az group list
