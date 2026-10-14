module "networking" {
  source = "../../modules/networking"

  resource_group_name = "rg-astronomy-dev"
  location            = "eastus"

  vnet_name          = "vnet-astronomy-dev"
  vnet_address_space = ["10.30.0.0/16"]

  aks_subnet_name     = "snet-aks-dev"
  aks_subnet_prefixes = ["10.30.1.0/24"]

  reserved_subnet_name     = "snet-future-services-dev"
  reserved_subnet_prefixes = ["10.30.2.0/24"]

  tags = {
    Project     = "AstronomyShop"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}
