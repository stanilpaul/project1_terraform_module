locals {
  rg        = data.terraform_remote_state.network.outputs.resource_group.rg_details
  subnets   = data.terraform_remote_state.network.outputs.network.subnets_details
  public_ip = data.terraform_remote_state.network.outputs.network.public_ip_details
  nic       = data.terraform_remote_state.vm.outputs.compute.nic_details
}
