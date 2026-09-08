<#
.SYNOPSIS
    Creates a new Active Directory user

.DESCRIPTION
    This script interactively prompts for user details, validates the input, displays a summary,
    asks for confirmation, and then creates a new Active Directory user.

.NOTES
    Creator: ivelgomu-debug /R.K / 09.08.2026
    Requires: Active Directory PowerShell module and Domain Admin (or equivalent) rights
    This script is intended for use in a controlled environment, such as a lab or testing setup.
#>  

#Prompts for user information
$DisplayName = Read-Host "Enter Display Name"
$FirstName = Read-Host "Enter First Name"
$LastName = Read-Host "Enter Last Name"
$SamAccountName = Read-Host "Enter Username (SamAccountName)"
$Department = Read-Host "Enter Department"
$Password = Read-Host "Enter Password" -AsSecureString

#Basic validation

if (
    [string]::IsNullOrWhiteSpace($DisplayName) -or
    [string]::IsNullOrWhiteSpace($FirstName) -or
    [string]::IsNullOrWhiteSpace($LastName) -or
    [string]::IsNullOrWhiteSpace($SamAccountName) -or
    [string]::IsNullOrWhiteSpace($Department) -or
    $null -eq $Password -or $Password.Length -eq 0
    )
   
 #Check if any of the required fields are empty or if the password is not provided if $null then output:

    {
       
        write-host "Error: All fields are required, Closing script."

    exit
}

#Hashtable to build user object
$UserProperties = @{
    Name = "$FirstName $LastName"
    GivenName = $FirstName
    Surname = $LastName
    SamAccountName = $SamAccountName
    Department = $Department
    DisplayName = $DisplayName
    AccountPassword = $Password
    Enabled = $true
    Path = "OU=_Users,DC=lab,DC=local"
    UserPrincipalName = "$SamAccountName@lab.local"
}

# User existence check

    if (Get-ADUser -Filter "SamAccountName -eq '$SamAccountName'") {
        Write-Host "User already exists." -ForegroundColor Red
        exit
    }
    
#Before creating the user, display a summary of the information

Write-Host "`n===== User Information Summary=====`n" -ForegroundColor Yellow

foreach ($Property in $UserProperties.Keys)
{
    Write-Host "  $Property : $($UserProperties[$Property])"
}

Write-Host "=================================`n" -ForegroundColor Yellow
$Confirmation = Read-Host  " Do you want to create this user? (Y/N)"



if ($Confirmation -ieq "Y")

{
    #try-catch block to handle errors during user creation
    try
    {
        New-ADUser @UserProperties -ErrorAction Stop
        write-host "Active Directory user '$($UserProperties.DisplayName)' has been created successfully."
    }
    catch
    {
        Write-Host "Failed to create user: $_" -ForegroundColor Red
    }  
#try-catch block ends

} else {
    write-host "User creation cancelled."


}
