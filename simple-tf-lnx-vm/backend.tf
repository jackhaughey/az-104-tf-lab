# terraform {
#   backend "local" {
#     path = "../state/terraform.tfstate"
#   }
# }

#backend should be more like below, when this has been created.
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstatestorage2919"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}