# Active Directory Azure Homelab

Hands-on Active Directory lab built in Microsoft Azure to develop practical skills in Windows Server administration, identity management, Group Policy, and PowerShell automation.

**Context**: Created while working as a Service Desk Analyst to build real infrastructure experience and support a transition into Infrastructure / Cloud roles.

## Lab Overview

| Component              | Details                                      |
|------------------------|----------------------------------------------|
| Platform               | Microsoft Azure                              |
| Domain                 | lab.local                                    |
| Domain Controller      | Windows Server                               |
| Client                 | Domain-joined Windows machine                |
| Networking             | Same VNet and subnet                         |
| DNS                    | Clients point to the Domain Controller       |
| Focus                  | AD DS, Group Policy, PowerShell              |

## What Was Built

- Deployed and configured a Windows Server Domain Controller in Azure
- Created the Active Directory domain `lab.local`
- Configured DNS so clients resolve against the Domain Controller
- Designed Organizational Units and security groups
- Deployed a second virtual machine on the same VNet/subnet and successfully domain-joined it
- Created and linked Group Policy Objects (Desktop Wallpaper and Folder Redirection)
- Verified Group Policy application on the domain-joined client
- Developed PowerShell scripts for Active Directory user creation with validation and error handling

## Key Learning Outcomes

- Active Directory Domain Services installation and configuration
- DNS configuration for domain environments
- Domain join process and client integration
- Group Policy creation, linking, filtering, and troubleshooting
- PowerShell automation using the Active Directory module
- Basic identity and access management concepts

## Scripts

| Script | Description |
|--------|-------------|
| [Create_User_V2.ps1](Scripts/Create_User_V2.ps1) | Interactive AD user creation script with input validation and confirmation |
| [User-ad-account-creation.ps1](Scripts%20Updated/User-ad-account-creation.ps1) | Improved version with better structure, summary output, and error handling |
| [Scripts Updated/New-ADUser-Interactive.ps1](Scripts%20Updated/New-ADUser-Interactive.ps1) | Interactive Script with better structure

## Screenshots

- Domain Controller and Active Directory structure
- Domain-joined client
- Group Policy Objects (Wallpaper + Folder Redirection)
- User and group management in Active Directory
- DNS and networking configuration

## Documentation

Detailed documentation is available in the `docs/` folder:

- Network design
- DNS configuration
- Active Directory setup
- OU design
- Troubleshooting

## Next Steps

- Expand PowerShell scripts to support bulk user creation from CSV
- Implement additional Group Policies (mapped drives, security settings)
- Explore hybrid identity with Microsoft Entra Connect
- Introduce Infrastructure as Code using Bicep or Terraform

## Notes

This lab is intentionally kept low-cost. Resources are shut down when not in use. The project is focused on practical learning and portfolio development.
