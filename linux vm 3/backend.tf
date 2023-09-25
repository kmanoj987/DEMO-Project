terraform {
  backend "azurerm" {
    resource_group_name   = "RG-weu-dev-iaas"
    storage_account_name  = "terraformdemo12"
    container_name        = "terraform12"
    key                   = "terraform state file"  # Specify the state file name
    
  }
}