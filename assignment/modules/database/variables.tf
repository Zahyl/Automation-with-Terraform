variable "location" {
  description = "The Azure Region in which to deploy the resources"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to deploy the resources"
}

variable "db_name" {
  description = "The name of the PostgreSQL database"
}

variable "db_admin_username" {
  description = "The admin username for the PostgreSQL database"
}

variable "db_admin_password" {
  description = "The admin password for the PostgreSQL database"
}

variable "tags" {
  type = map(string)
}

