# variables.tf
/*
variable "client_id" {
  description = "The Client Secret of the Service Principal"
  type        = string
}


variable "client_secret" {
  description = "The Client Secret of the Service Principal"
  type        = string
  sensitive   = true # מסמן את המשתנה כסודי (לא חובה, אך מומלץ)
}

variable "subscription_id" {
  description = "The Subscription ID where the resources will be created"
  type        = string
}

variable "tenant_id" {
  description = "The Tenant ID of the Service Principal"
  type        = string
}
*/


variable "location" {
  description = "The Azure location for the resources"
  type        = string
  default     = "West europe"
}


variable "resource_group_name" {
  description = "The name of the resource group for the resources"
  type        = string

}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  
}

/*
variable "dns_servers" {
  description = "Optional list of DNS servers for the virtual network"
  type        = list(string)
  default     = ["8.8.8.8", "8.8.4.4"]
}
*/

variable "subnet_configs" {
  description = "A list of maps with subnet configuration: name and address_prefixes"
  type = list(object({
    name            = string
    address_prefixes = list(string)
  }))
}

variable "public_ip_name" {
  description = "The name of the public IP for the NAT Gateway"
  type        = string
}

variable "nat_gateway_name" {
  description = "The name of the NAT Gateway"
  type        = string
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
}

variable "tags" {
  description = "Tags to associate with the network resources"
  type        = map(string)
}
