# terraform {
#   required_version = ">= 1.5.0"

#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 3.0"
#     }
#   }
# }

# 👇 Resource Group (if not handled inside modules)
# resource "azurerm_resource_group" "main" {
#   name     = var.resource_group_name
#   location = var.location
# }

# 🌐 Network Module
module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
}

# 💻 Compute Module
module "compute" {
  source              = "./modules/compute"
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.vm_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.network.subnet_id
}

# 🔐 Key Vault Module
# module "keyvault" {
#   source              = "./modules/keyvault"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   keyvault_name       = var.keyvault_name
# }

# # 📊 Monitoring Module
# module "monitoring" {
#   source              = "./modules/monitoring"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   log_analytics_name  = var.log_analytics_name
# }

# # 📦 Storage Module
# module "storage" {
#   source              = "./modules/storage"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   storage_account_name = var.storage_account_name
# }