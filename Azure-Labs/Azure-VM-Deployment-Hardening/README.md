# 🖥️ Azure Windows Server 2025 Datacenter – VM Deployment Lab

## 📘 Project Overview
This lab demonstrates how to deploy a **Windows Server 2025 Datacenter (x64 Gen2)** virtual machine in **Microsoft Azure**, configure basic networking, connect via RDP, and verify the setup using PowerShell commands.  

This project forms part of my home lab series to strengthen my **cloud administration and infrastructure fundamentals**, with all steps fully documented and supported by screenshots.

---

## ⚙️ Lab Objectives
- Create a Windows Server VM in Azure.  
- Configure virtual networking and RDP access.  
- Connect remotely and verify system configuration.  
- Capture and document each step with screenshots.  
- Host the full project on GitHub as part of a cloud portfolio.

---

## 🧩 Prerequisites
- Active **Azure subscription** (Free Trial or Pay-As-You-Go).  
- Access to the [Azure Portal](https://portal.azure.com).  
- Basic knowledge of virtual machines and networking.  

---

## 🧠 Step-by-Step Implementation

### **Step 1 – Log into Azure Portal**
- Navigate to [https://portal.azure.com](https://portal.azure.com) and sign in.  
📸 *Screenshot 1:* Azure Portal dashboard after login.

---

### **Step 2 – Create a New Virtual Machine**
1. Go to **Virtual Machines** → **Create** → **Azure Virtual Machine**.  
2. Fill in the following fields:  
   - **Resource group:** `ServerLab-RG`  
   - **VM name:** `ServerLab-VM`  
   - **Region:** `South Africa North` (or your preferred region)  
   - **Image:** `Windows Server 2025 Datacenter – x64 Gen2`  
   - **Size:** `Standard_B2s` (2 vCPU, 4GB RAM)  
   - **Authentication type:** `Password`  
   - **Username:** `labadmin`  
3. Click **Next → Networking**.  
📸 *Screenshot 2:* VM creation form (Basics tab) filled in.

---

### **Step 3 – Configure Networking**
- Keep the default **Virtual Network** and **Subnet** created by Azure.  
- Under *Inbound Ports*, allow **RDP (3389)**.  
📸 *Screenshot 3:* Networking configuration before creation.

---

### **Step 4 – Review + Create**
- Skip optional tabs (Management, Monitoring, Advanced).  
- Click **Review + Create**, wait for validation, then **Create**.  
📸 *Screenshot 4:* Validation passed.  
📸 *Screenshot 5:* Deployment in progress or success confirmation.

---

### **Step 5 – Connect to the VM**
1. Once deployed, open the resource → **Connect → RDP**.  
2. Download and open the `.rdp` file.  
3. Log in with your credentials (e.g., `labadmin`).  
📸 *Screenshot 6:* Windows Server 2025 desktop after successful login.

---

### **Step 6 – Verify System Configuration**
Open **PowerShell** and run:
```powershell
systeminfo
hostname
Get-WindowsEdition
