terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}

}


/*

# קבוצת משאבים עבור כל המשאבים
resource "azurerm_resource_group" "rg" {
  name     = "cs-rg"
  location = var.location
}

# קריאה למודול network שמכיל את כל רכיבי הרשת
module "network" {
  source              = "./modules/Networking"
  vnet_name           = "example-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  vnet_address_space  = ["10.0.0.0/16"]
  tags                = {
    environment = "test"
    project     = "luka-deploy"
  }

  # הגדרת תתי-רשתות
  subnet_configs = [
    {
      name            = "cx-subnet-1"
      address_prefixes = ["10.0.1.0/24"]
    },
    {
      name            = "cx-subnet-2"
      address_prefixes = ["10.0.2.0/24"]
    }
  ]

  # הגדרות NAT Gateway
  public_ip_name   = "gateway-nat-ip"
  nat_gateway_name = "CX-nat-gateway"

  # הגדרות Network Security Group
  nsg_name = "CX-nsg"
}


*/


















/*
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
*/

