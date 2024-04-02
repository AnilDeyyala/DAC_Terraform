resource_group_name = "DAC-rg"
location            = "eastus"

## AKS ## 
clustername         = "daccluster"
sku_tier            = "Free"
dns_prefix          = "daccluster"
private_cluster_enabled = "false"
clusternodepoolname = "dacclusternp"
nodecount = "1"
vm_size = "Standard_D2_v2"
created_by = "Terraform"
created_for = "DAC"
customnodepoolname = "daccustomnp"
customnp_vmsize = "Standard_D2_v2"

## ACTIVE DIRECTORY ##
display_name = "dac-sp"

## AZ MONITOR ##
logworkspacename = "dacazmonitor"

## KEY VAULT ## 
keyvaultname = "dackeyvault"
sku_name = "standard"

## LOG ANALYTICS ## 
laworkspacename = "dacloganalytics"
sku = "Free"

## SQL ##
sqlservername = "dacsqlserver"
sqlversion = "12.0"
sqlusername = "dacuser"
sqlpassword = "dacpassword"
tags = ""