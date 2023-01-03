# Configure the AWS Provider
provider "aws" {
  access_key = "enter your access_key"
  secret_key = "enter your secret_key"
  region = "us-east-1"
}

# Configure the Azure Provider
provider "azurerm" {
 features {}
  subscription_id = "enter your subscription_id"
  client_id       = "enter your client_id"
  client_secret   = "enter your client_secret"
  tenant_id       = "enter your tenant_id"
}
