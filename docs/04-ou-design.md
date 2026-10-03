# OU Design

## Structure
lab.local
└── _Lab
├── LabUsers
├── Lab_Security_Groups
└── Computers (domain-joined clients)


## Purpose of Each OU

| OU                    | Purpose                              |
|-----------------------|--------------------------------------|
| _Lab                  | Top-level lab OU                     |
| LabUsers              | User accounts                        |
| Lab_Security_Groups   | Security groups                      |
| Computers             | Domain-joined client machines        |

## Design Notes

- A simple and clean OU structure was used for clarity
- Group Policies are linked at the `_Lab` level or to specific child OUs for testing
- This structure makes it easy to apply targeted policies later
