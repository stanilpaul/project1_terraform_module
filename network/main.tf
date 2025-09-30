############################################
############################################
# Small project at the end of the earning terraform
# Here I tried to use all the basics I learn with terraform + azure
# Try to use a cool architecture and simulate a production environement
# Firest I test one by one all resources and functionnalities with TESTING mode
# Then I bring this project intermediate level production environment

#random resource for everytime new name generation*****
resource "random_string" "random" {
  length  = var.random_length
  upper   = false
  special = false
}
## This module is form my public terraform repo
module "resource-group" {
  source   = "app.terraform.io/learn-terraform-modules-paul/resource-group/azurerm"
  version  = "1.0.0"
  rg_name  = "${var.rg_name}-${random_string.random.result}"
  location = var.location
}

##############################################
# starting to import the module 
#network module for network team 
# I will use separate state file for this 
###########################################
# This is from my terraform private repo module.
module "network" {
  source             = "app.terraform.io/learn-terraform-modules-paul/networking-project1/azurerm"
  version            = "1.0.0"
  rg_name            = module.resource-group.rg_details.name
  location           = module.resource-group.rg_details.location
  vnet_name          = "vnet-${random_string.random.result}"
  vnet_address_space = var.vnet_address_space
  nat_name           = var.nat_name

  subnets          = var.subnet_list
  nsg_rules_simple = var.nsg_rule_list
  public_ips       = var.public_ip_list
  tags             = var.tags
}
