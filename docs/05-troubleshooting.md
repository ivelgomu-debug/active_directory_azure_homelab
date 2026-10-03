# Troubleshooting Notes

## Common Issues Encountered

### 1. Domain Join Failures
- **Cause**: Incorrect DNS settings on the client
- **Fix**: Set the client DNS to the Domain Controller IP (10.10.1.4)

### 2. Group Policy Not Applying
- **Cause**: Logged in with a local account instead of a domain account
- **Fix**: Log in using a domain user (e.g. `lab.local\username`)

### 3. "Directory object not found" when creating users
- **Cause**: Incorrect OU path in the PowerShell script
- **Fix**: Updated the path to the correct OU (`OU=LabUsers,OU=_Lab,DC=lab,DC=local`)

### 4. Public IP / Core Quota Limits
- **Cause**: Azure free/trial subscription limits
- **Fix**: Deleted unused Public IPs and stopped unnecessary VMs
