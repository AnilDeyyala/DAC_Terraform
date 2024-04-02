module "resource_group" {
    source = "./modules/resourcegroup" 
    resource_group_name = var.resource_group_name
    location = var.location
}

module "aks" {
    depends_on = [ module.resource_group ]
    source = "./modules/aks"
    resource_group_name = var.resource_group_name
    location            = var.location
    clustername         = var.clustername
    sku_tier            = var.sku_tier
    dns_prefix          = var.dns_prefix
    private_cluster_enabled = var.private_cluster_enabled
    clusternodepoolname = var.clusternodepoolname
    nodecount           = var.nodecount
    vm_size             = var.vm_size
    created_by          = var.created_by
    created_for         = var.created_for
    customnodepoolname  = var.customnodepoolname
    customnp_vmsize     = var.customnp_vmsize
}

module "activeDirectory" {
    depends_on = [ module.resource_group ]
    source = "./modules/activeDirectory"
    display_name = var.display_name
}

module "keyvault" {
    source = "./modules/keyvault"
    keyvaultname  = var.keyvaultname 
    sku_name = var.sku_name
    location = var.location
    resource_group_name = var.resource_group_name
}

module "logAnalytics" {
    depends_on = [ module.resource_group ]
    source = "./modules/logAnalytics"
    laworkspacename   = var.laworkspacename
    sku    = var.sku
    location = var.location
    resource_group_name = var.resource_group_name
}

module "sql" {
    source = "./modules/sql"
    depends_on = [ module.resource_group ]
    sqlservername =  var.sqlservername
    sqlversion = var.sqlversion
    sqlusername = var.sqlusername
    sqlpassword = var.sqlpassword
    created_by = var.created_by
    created_for = var.created_for
    location = var.location
    resource_group_name = var.resource_group_name
}