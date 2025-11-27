🖥️ Azure Windows Server 2025 – VM Deployment & Security Lab
📘 Overview

This lab demonstrates how I deployed a Windows Server 2025 Datacenter (x64 Gen2) virtual machine in Microsoft Azure, configured networking, secured remote access, and validated the server using PowerShell commands.

This project forms part of my home lab series designed to strengthen my cloud administration, infrastructure, and security fundamentals.

🧱 Architecture Diagram (Text Version)
Client Machine → Azure Portal
       ↓
Resource Group: ServerLab-RG
       ↓
Virtual Machine: ServerLab-VM (Windows Server 2025)
       ↓
Virtual Network (Default VNet created by Azure)
       ↓
Subnet (Default Subnet)
       ↓
Network Security Group (NSG)
       ↳ Inbound: RDP (3389) from my IP
       ↳ Outbound: Internet (default)

🎯 Lab Objectives

Deploy a Windows Server 2025 VM in Azure

Configure virtual networking and RDP access

Connect to the VM using RDP

Validate OS configuration using PowerShell

Document all steps with screenshots

Apply basic security considerations

🧩 Prerequisites

Active Azure subscription

Access to Azure Portal

Basic knowledge of virtual machines and networking

RDP client installed

🚀 Step-by-Step Implementation
Step 1 — Log Into Azure Portal

Navigate to https://portal.azure.com

Sign in with your Azure account
📸 Screenshot: Azure Portal dashboard

Step 2 — Create a New Windows Server 2025 VM

Navigate to:
Virtual Machines → Create → Azure Virtual Machine

Configuration used:

Resource group: ServerLab-RG

VM name: ServerLab-VM

Region: South Africa North

Image: Windows Server 2025 Datacenter (x64 Gen2)

Size: Standard_B2s

Authentication: Password

Username: labadmin

📸 Screenshot: VM creation Basic settings

Click Next → Networking

Step 3 — Configure Networking

Use default VNet and subnet (Azure-generated)

Inbound port rules:

Allow RDP (3389)

Source: My IP (recommended)

NIC: Default

📸 Screenshot: Networking configuration

Step 4 — Review + Create

Skip optional tabs (Management, Monitoring, Advanced)

Click Review + Create

After validation passes → Create

📸 Screenshot: Validation passed
📸 Screenshot: Deployment completed

Step 5 — Connect to the VM

Go to your VM resource

Select Connect → RDP

Download the .rdp file

Log in using the credentials created earlier
📸 Screenshot: Windows Server 2025 desktop on login

Step 6 — Verify System Configuration

Using PowerShell, run:

systeminfo
hostname
Get-WindowsEdition
Get-NetIPAddress


📸 Screenshot: PowerShell output

🔐 Security Considerations

Even though this was a basic deployment, I applied several security best practices:

Networking

Restricted RDP to my IP address only

Ensured only port 3389 is exposed

Default outbound rules kept minimal

OS Security

Strong admin password enforced

Windows Firewall enabled

Installed initial Windows Updates

Verified RDP NLA (Network Level Authentication)

Future Enhancements

Use Azure Bastion (removes need for public RDP)

Use Privileged Access Workstations

Implement Just-In-Time (JIT) access

Hardening following CIS benchmarks

🛠 Troubleshooting

Common issues that may occur during deployment:

1️⃣ RDP Not Connecting

NSG missing inbound rule for RDP

RDP allowed from “Any” but Azure blocked IP

Wrong credentials

VM still booting

2️⃣ Wrong VM SKU Availability

South Africa North sometimes lacks Standard_B2s capacity

Switch region or VM size

3️⃣ DNS / IP Issues

Run ipconfig /all inside server

Confirm private IP assigned

🧠 What I Learned

How to deploy Windows Server 2025 in Azure

Understanding VM components (NIC, VNet, Disk, NSG)

Securing remote access using NSGs

Basic OS validation and post-deployment configuration

Importance of identity + network security in cloud deployments

🏢 Real-World Business Value

This lab mirrors tasks done daily by Cloud Support and Cloud Engineers:

Provisioning secure virtual machines

Enforcing network security

Managing remote connections

Validating system health

Creating repeatable deployment patterns

