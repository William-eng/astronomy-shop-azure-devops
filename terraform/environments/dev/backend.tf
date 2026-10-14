terraform {
  backend "azurerm" {
    resource_group_name  = "rg-astronomy-tfstate"
    storage_account_name = "stastronomytfstate01"
    container_name       = "tfstate"
    key                  = "astronomy-shop/dev/terraform.tfstate"

    use_azuread_auth = true
    use_cli          = true
  }
}
