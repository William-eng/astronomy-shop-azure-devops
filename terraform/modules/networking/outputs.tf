output "resource_group_name" {
  description = "Name of the networking resource group."
  value       = azurerm_resource_group.network.name
}

output "resource_group_location" {
  description = "Azure region of the networking resources."
  value       = azurerm_resource_group.network.location
}

output "vnet_id" {
  description = "ID of the Azure virtual network."
  value       = azurerm_virtual_network.main.id
}

output "vnet_name" {
  description = "Name of the Azure virtual network."
  value       = azurerm_virtual_network.main.name
}

output "aks_subnet_id" {
  description = "Subnet ID used by the AKS cluster."
  value       = azurerm_subnet.aks.id
}

output "reserved_subnet_id" {
  description = "Subnet ID reserved for future services."
  value       = azurerm_subnet.reserved.id
}
