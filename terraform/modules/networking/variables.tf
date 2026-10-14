variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Azure region for networking resources."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet."
  type        = string
}

variable "aks_subnet_prefixes" {
  description = "Address prefixes for the AKS subnet."
  type        = list(string)
}

variable "reserved_subnet_name" {
  description = "Name of the reserved subnet."
  type        = string
}

variable "reserved_subnet_prefixes" {
  description = "Address prefixes for the reserved subnet."
  type        = list(string)
}

variable "tags" {
  description = "Tags applied to supported Azure resources."
  type        = map(string)
  default     = {}
}
