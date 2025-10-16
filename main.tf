module "compute" {
  source              = "/modules/compute"
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.vm_name
  subnet_id           = module.network.subnet_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  vm_size             = var.vm_size
  os_disk_size_gb     = var.os_disk_size_gb
}