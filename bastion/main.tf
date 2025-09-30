##############################################
#bastion(testing) module for support team 
# I will use separate state file for this 
###########################################
module "testing" {
  source              = "app.terraform.io/learn-terraform-modules-paul/bastion-project1/azurerm"
  version             = "1.0.0"
  rg_name             = local.rg.name
  location            = local.rg.location
  vnet_name           = local.network.name
  bastion_subnet_cidr = var.bastion_ip_range
  bastion_ip_name     = "bastion-ip"
  bastion_name        = "bastion-host"
  tags                = var.tags
}

########################################
# with this command you can take control of a vm with bastion without portal
# az network bastion tunnel \                                                                                                                                                                                            ─╯
#   --name bastion-host \
#   --resource-group terraform-661u1d \
#   --target-resource-id $(az vm show -g terraform-661u1d -n vm1 --query id -o tsv) \
#   --resource-port 22 \
#   --port 50022

# ssh azureuser@localhost -p 50022
###########################################
