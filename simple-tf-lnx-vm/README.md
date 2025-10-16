# AZ-104 IaC Starter Infrastructure

This repository is created for **my educational purposes only** as part of my learning journey in Azure infrastructure and Terraform.

> ⚠️ **Disclaimer**  
> The code and configurations provided here are intended for demonstration and experimentation. I make **no guarantees** regarding their accuracy, security, or suitability for production use.  
> I accept **no responsibility** for any issues, damage, or loss resulting from the use of this repository.

Feel free to explore, adapt, and learn — but use at your own risk.

## Azure Linux VM Deployment with VNet & Resource Group (Terraform)

This repository provisions a secure, modular Azure Linux VM environment using Terraform. It includes resource group creation, virtual network setup, subnet allocation, and VM deployment with managed disks and NICs.

                ├── az-lnx-vm-dsk.tf         # Managed disk configuration
                ├── az-lnx-vm-int.tf         # Network interface for VM
                ├── az-lnx-vm-rg.tf          # Resource group definition
                ├── az-lnx-vm.tf             # Core VM deployment
                ├── az-subnet-a-1.tf         # Subnet configuration
                ├── az-vnet-a.tf             # Virtual network setup
                ├── backend.tf               # Remote state backend (e.g., Azure Storage)
                ├── outputs.tf               # Terraform output values
                ├── provider.tf              # Azure provider configuration
                ├── README.md                # Project documentation
                ├── terraform.tfvars         # Variable values
                └── variables.tf             # Input variable definitions

##Prerequisites

- Terraform cli
- Azure subscription with appropriate permissions
- Remote backend (optional): Azure Storage Account for state management