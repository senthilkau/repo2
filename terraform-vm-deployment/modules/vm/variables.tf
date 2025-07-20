variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "resource_group" {
  description = "The name of the resource group for the VM"
  type        = string
  default     = "resources"
}

variable "network_resource_group" {
  description = "The name of the resource group for network components"
  type        = string
  default     = "network_components"
}

variable "tags" {
  description = "Tags to assign to the virtual machine"
  type        = map(string)
  default     = {
    created_by   = "senthilk"
    created_date = "20/07/2025"
    env          = "dev"
  }
}