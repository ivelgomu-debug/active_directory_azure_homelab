# Active Directory Azure Homelab

Personal proof-of-concept lab built in Microsoft Azure to practice Windows Server, Active Directory Domain Services, and PowerShell administration.

**Context**: Built as a Service Desk Analyst learning infrastructure and identity fundamentals.

## Lab Overview
- **Platform**: Microsoft Azure
- **OS**: Windows Server (Evaluation)
- **Domain**: lab.local
- **Purpose**: Hands-on practice of deploying a Domain Controller, creating OUs/users/groups, and writing basic PowerShell automation

## What Was Built
- Azure Virtual Machine running Windows Server
- Promoted the server to a Domain Controller and created an Active Directory forest/domain (`lab.local`)
- Created Organizational Units, security groups and user accounts
- Wrote PowerShell scripts for user creation using the Active Directory module

## Scripts
| Script | Description |
|--------|-------------|
| [Create_User_V2.ps1](Scripts/Create_User_V2.ps1) | Interactive script to create a new Active Directory user with validation, confirmation and verification |
| [Create_User_test.ps1](Scripts/Create_User_test.ps1) | Earlier version of the user creation script (kept for learning history) |

## Skills Demonstrated
- Azure Virtual Machine deployment
- Active Directory Domain Services installation and promotion
- Organizational Unit, user and group management
- PowerShell Active Directory module (New-ADUser, Get-ADUser, etc.)
- Basic scripting practices (parameters, validation, confirmation)

## Next Steps
- Add a domain-joined Windows client
- Create and test Group Policy Objects
- Improve scripts for bulk user creation
- Explore hybrid identity with Microsoft Entra ID (Azure AD Connect)
- Learn Infrastructure as Code (Bicep or Terraform)

## Notes
This was my first Virtual Machine lab and first PowerShell script. The lab is kept low-cost using Azure B-series VMs and is shut down when not in use.
