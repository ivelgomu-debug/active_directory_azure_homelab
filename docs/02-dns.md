# DNS Configuration

## Overview

Correct DNS configuration is critical for Active Directory to function properly.

## Domain Controller DNS

- The Domain Controller (10.10.1.4) runs Active Directory-integrated DNS
- It hosts the `lab.local` zone

## Client DNS Configuration

The domain-joined client is configured to use the Domain Controller as its primary DNS server:

- **Preferred DNS**: 10.10.1.4

This was set on the network interface of the client VM so that it can correctly locate the domain and domain services.

## Verification

- Client can resolve `lab.local`
- Domain join completed successfully
- Group Policy can be retrieved from the Domain Controller
