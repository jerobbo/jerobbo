variable "environment" {
  description = "Environment name, e.g. 'prod', 'staging', 'dev'"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "uksouth"
}



variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = "ab6ecffa-0822-4e61-9500-8088ae61c8fc"
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
  default     = "3c73d230-a9ea-45b1-8453-46d65b2b4203"
}


variable "naming_prefix" {
  description = "Prefix to be used in resource names"
  type        = string
  default     = "jerobbo-"
}

variable "sku_tier" {
  description = "SKU tier for resources that support different tiers"
  type        = string
  default     = "Standard"
}

variable "network_address_space" {
  description = "Address space for Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet"
  type        = map(string)
  default = {
    "subnet1" = "10.0.1.0/24"
    "subnet2" = "10.0.2.0/24"
  }
} 