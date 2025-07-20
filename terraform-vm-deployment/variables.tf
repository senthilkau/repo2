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

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
  sensitive   = true
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