## RG ####
variable "resource_group_name" {
    type = string
}

variable "location" {
    type = string
}

variable "created_by" {
    type = string
}

variable "created_for" {
    type = string
}

############### AKS ################
variable "clustername" {
    type = string 
}

variable "sku_tier" {
    type = string
    description = "Possible values are Free, Standard (which includes the Uptime SLA) and Premium. Defaults to Free"
}

variable "dns_prefix" {
    type = string 
}
variable "private_cluster_enabled" {
    type = string
    description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."  
}

variable "clusternodepoolname" {
    type = string
}

variable "nodecount" {
    type = string 
    description = "This must be between 1 and 1000 and between min_count and max_count" 
}

variable "vm_size" {
    type = string 
}


## custom nodepool ##
variable "customnodepoolname" {
    type = string
}

variable "customnp_vmsize" {
    type = string 
}


## ACTIVE DIRECTORY #######
variable "display_name" {
    type = string
}

######### AZ MONITOR ######
variable "logworkspacename" {
    type = string 
}

### KEYVAULT ####
variable "keyvaultname" {
    type = string
}

variable "sku_name" {
    type = string
}

#####   log Analytics ########
variable "laworkspacename" {
    type = string 
}

variable "sku" {
    type = string 
}


####### SQL ######
variable "sqlservername" {
    type = string
}

variable "sqlversion" {
    type = string 
}

variable "sqlusername" {
    type = string 
}

variable "sqlpassword" {
    type = string
}

variable "tags" {
    type = string
}