variable "sqlservername" {
  type = string
}

variable "sqlversion" {
  type = string
}
variable "sqlusername" {
  type = string
  sensitive = true
}

variable "sqlpassword" {
  type = string 
  sensitive = true
}

variable "created_by" {
  type = string 
}

variable "created_for" {
  type = string 
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string 
}
