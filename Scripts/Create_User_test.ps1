# Ask the admin for info

$GivenName = Read-Host "Enter First Name"
$Surname = Read-Host "Enter Last Name"
$SamAccountName = Read-Host "Enter Username"
$Department = Read-Host "Enter Department"

# Build Hashtable

$UserSplat = @{
    Name           = "$GivenName $Surname"
    GivenName      = $GivenName
    Surname        = $Surname
    SamAccountName = $SamAccountName
    Department     = $Department
    Enabled        = $true
}

# Create User

New-ADUser @UserSplat

Write-Host ""
Write-Host "User created:" -ForegroundColor Green

# Verify User

Get-ADUser $SamAccountName | Select Name,SamAccountName
