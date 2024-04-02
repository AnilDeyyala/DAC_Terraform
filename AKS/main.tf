resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                      = var.clustername
  location                  = azurerm_resource_group.resource_group.location
  resource_group_name       = azurerm_resource_group.resource_group.name
  dns_prefix                = var.dns_prefix
  private_cluster_enabled   = var.private_cluster_enabled
  sku_tier                  = var.sku_tier
  kubernetes_version        = "1.28" # If unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). 
  automatic_channel_upgrade = "patch"

  default_node_pool {
    name                = var.clusternodepoolname
    node_count          = var.nodecount
    vm_size             = var.vm_size
    enable_auto_scaling = false
    os_disk_size_gb     = "10"
    os_sku              = "Ubuntu"
    # enable_host_encryption = true
    zones = ["1", "2"]
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    created_by = "${var.created_by}"
    created_for = "${var.created_for}"
    date       = timestamp()
  }
}

#############################################
############                    #############
############   CUSTOM NODE POOL #############
############                    #############
#############################################

# resource "azurerm_kubernetes_cluster_node_pool" "customnodepoolname" {
#   depends_on = [
#     azurerm_kubernetes_cluster.cluster
#   ]
#   name                  = var.customnodepoolname
#   kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
#   vm_size               = var.customnp_vmsize
#   node_count            = 1
#   os_disk_size_gb       = "10"
#   os_sku                = "Ubuntu"
#   zones                 = ["1", "2"]
#   #   enable_host_encryption = true

#   tags = {
#     created_by = "${var.created_by}"
#     created_for = "${var.created_for}"
#     date       = timestamp()
#   }
# }