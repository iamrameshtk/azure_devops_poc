# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    subscription_id = "a5fcbd47-d3ba-4bac-873a-9ca6b162c0ea"
    resource_group_name = "rk-storage-account-rg"
    storage_account_name = "rktfstorageaccount001"
    container_name = "rktfstorageaccount"
    key = "dev.tfstate"
    #Test Change
  }
}

# Provider Block
provider "azurerm" {
 features {}          
}


