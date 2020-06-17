#Connect into your Azure AD Account
Connect-AzureAD
#Create a new user
az ad user create --display-name "Conner McKay" --user-principalname "conner@dalehilljroutlook.onmicrosoft.com" --password "Pa55w.rd"
#Verify user was created
az ad user show --id "insert id assigned during user account creation"
#Modify user account to add mail nickname
az ad user update --id "insert id of created user" --mail-nickname "CrazyConnor"
#Enabling user acocunt
az ad user update --id "insert id of user" --account-enabled $true
#Removing account from Azure AD
az ad user delete --id "insert id of user"