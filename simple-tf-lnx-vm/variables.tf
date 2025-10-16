variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "uksouth"
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

# Key Vault
variable "keyvault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "Azure AD tenant ID for Key Vault access policies"
  type        = string
}

# Networking
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_prefix" {
  description = "Subnet address prefix"
  type        = string
}

# Compute
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "os_disk_size_gb" {
  description = "Size of the OS disk in GB"
  type        = number
  default     = 64
}

# Monitoring
variable "log_analytics_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
}