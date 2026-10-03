# Network Design

## Overview

The lab is built in Microsoft Azure using a single Virtual Network to keep the environment simple and cost-effective.

## Configuration

- **Resource Group**: rg-adlab-eastus-001
- **Virtual Network**: vnet-adlab-eastus-001
- **Subnet**: snet-servers (10.10.1.0/24)
- **Region**: East US

## Virtual Machines

| VM Name              | Role                  | Private IP   |
|----------------------|-----------------------|--------------|
| vm-adlab-dc-01       | Domain Controller     | 10.10.1.4    |
| vm-adlab-client-01   | Domain-joined Client  | (DHCP)       |

## Design Decisions

- Both the Domain Controller and the client are placed on the **same VNet and subnet**
- This allows direct communication without the need for peering or complex routing
- Public IPs are used only for RDP access and are removed or shut down when not in use
