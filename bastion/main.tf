##############################################
#network module for support team 
# I will use separate state file for this 
###########################################
module "testing" {
  source              = "../modules/bastion"
  rg_name             = module.resource-group.rg_details.name
  location            = module.resource-group.rg_details.location
  vnet_name           = module.network.vnet_details.name
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
