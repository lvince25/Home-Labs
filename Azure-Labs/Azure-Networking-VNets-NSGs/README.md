# Azure Networking – VNets, Subnets & Network Security Groups

## Overview
This lab demonstrates the design and implementation of a segmented Azure virtual network using subnets and Network Security Groups (NSGs) based on least-privilege security principles.

## Objectives
- Design a multi-subnet Azure Virtual Network
- Implement NSGs with granular inbound and outbound rules
- Secure management access while restricting application traffic
- Validate network behavior through connectivity testing
- Document and validate configuration using Azure Network Watcher

## Architecture
- Virtual Network with isolated subnets (App & Management)
- Dedicated NSGs per subnet
- Secure RDP access via management subnet only
- Restricted east-west and north-south traffic

## Key Tasks Performed
- Created Azure VNet and multiple subnets
- Configured NSGs with least-privilege rules
- Associated NSGs to appropriate subnets
- Deployed virtual machines into isolated subnets
- Tested allowed and denied traffic scenarios
- Validated flow using Network Watcher and troubleshooting tools

  
## Validation & Testing

Network security and segmentation were validated through controlled connectivity testing:

- Confirmed RDP (TCP 3389) access was **allowed** only from the Management subnet to Management VM
- Confirmed RDP (TCP 3389) access was **blocked** to Application VM in the App subnet
- Verified subnet isolation and NSG enforcement using live RDP connection attempts
- Validated least-privilege access by testing inbound and outbound traffic scenarios

Results confirmed correct NSG rule priority, subnet association, and secure traffic flow.

## Tools & Technologies
- Microsoft Azure
- Azure Virtual Networks
- Network Security Groups (NSGs)
- Azure Network Watcher
- PowerShell
- Azure CLI

## Outcome
This lab reflects real-world enterprise networking practices and demonstrates hands-on Azure networking, security segmentation, and troubleshooting skills aligned with IT Support, Cloud, and Security roles.

