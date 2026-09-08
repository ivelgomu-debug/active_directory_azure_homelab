#Script Information:
#Create User in AD for Test purposes
#Creator : RK

#Ask host for information:
$FirstName      = Read-Host "Enter First Name"
$LastName       = Read-Host "Enter Last Name"
$SamAccountName = Read-Host "Enter Username"
$Department     = Read-Host "Enter Department"
$Password       = Read-Host "Enter Password" -AsSecureString
$enabled        = $true
$Name          = "$FirstName $LastName"



#Validate Information

if ([string]::IsNullOrEmpty($FirstName) -or [string]::IsNullOrEmpty($LastName) -or [string]::IsNullOrEmpty($SamAccountName) -or [string]::IsNullOrEmpty($Department) -or $Password -eq $null) {
    Write-Host "Please provide all required information."
    exit
}

#Build Hashtable

$usersplat = @{
    Name            = $Name
    GivenName       = $FirstName
    Surname         = $LastName
    SamAccountName  = $SamAccountName
    Department      = $Department
    AccountPassword = $Password
    Enabled         = $enabled
}

#Show Summary

Write-Host "User Creation Summary:"
Write-Host "First Name: $FirstName"
Write-Host "Last Name: $LastName"
Write-Host "Username: $SamAccountName"
Write-Host "Department: $Department"
Write-Host "Enabled: $enabled"

#Confirm Action

$confirm = Read-Host "Are you sure you want to create this user? (Y/N)"
if ($confirm -eq "Y") {
    # Create User
    New-ADUser @usersplat
    # Verify User Creation
    Get-ADUser -Identity $SamAccountName | Format-List *
}

#If user was not created, verify that it doesn't exist

if ($confirm -ne "Y") {
    Write-Host "User creation cancelled."
}
