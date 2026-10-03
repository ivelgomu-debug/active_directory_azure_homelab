# OU Design

| OU Name               | Purpose                                      |
|-----------------------|-----------------------------------------------|
| Domain Controllers    | Default OU for domain controller objects      |
| Lab                   | Top-level OU for all lab-related objects      |
| LabUsers              | Stores all user accounts                      |
| Lab_Security_Groups   | Security groups for access control            |
| Computers             | Domain-joined client machines                 |

## PowerShell Output


## Design Notes

- Simple structure for clarity and learning  
- GPOs linked at the _Lab level or specific child OUs  
- Easy to expand with Servers, Admins, or Departments  

## Screenshot

![OU Structure](../Screenshots/LabV2-OU-Structure.png)
