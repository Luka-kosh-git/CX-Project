
terraform {
  backend "azurerm" {
    resource_group_name  = "Luka-playGround"
    storage_account_name = "lukaplaystorageaccount"
    container_name       = "terraform-backend"
    key                  = "terraform/state.tfstate" # just the name of the file
  }

}

