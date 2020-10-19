terraform {
    required_version = ">= 0.11" 
    backend "azurerm" {
        storage_account_name = "__terraformstorageaccount__"
        container_name       = "terraform"
        key                  = "terraform.tfstate"
        use_msi              = true
        subscription_id      = "e5dd284b-1e9e-4bb3-a7b9-ed3b8b859211"
        tenant_id            = "3b46dc86-349d-4808-9174-13821020fb16"
    }
}

# Configure the Azure Provider
provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}
}