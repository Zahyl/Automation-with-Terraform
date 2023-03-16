variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "linux_vm1_nic_id" {
  type        = string
}

variable "linux_vm2_nic_id" {
  type        = string
}
