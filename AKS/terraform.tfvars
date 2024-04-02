resource_group_name = "DAC-rg"
location            = "eastus"
clustername         = "daccluster"
sku_tier            = "Free"
dns_prefix          = "daccluster"
private_cluster_enabled = "fase"

# clusternodepool
clusternodepoolname = "dacclusternp"
nodecount           = "1"
vm_size             = "Standard_D2_v2"

created_by          = "terraform"
created_for         = "DAC"

# custom nodepool 
customnodepoolname  = "daccustomnp"
customnp_vmsize     = "Standard_D2_v2"