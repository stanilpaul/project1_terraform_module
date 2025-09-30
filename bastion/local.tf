locals {
  rg      = data.terraform_remote_state.network.outputs.resource_group.rg_details
  network = data.terraform_remote_state.network.outputs.network.vnet_details
}
