locals {
  # I am taking output from network module state
  vnets = data.terraform_remote_state.network.outputs.network.subnets_details
  rg    = data.terraform_remote_state.network.outputs.resource_group.rg_details

  instance_list = {
    vm1 = {
      name              = "vm1"
      subnet_id         = local.vnets["web1"].id
      admin_username    = "paul"
      password          = "Justice2024!"
      cloud_init_file   = "${path.root}/web-server-cloud-init.txt"
      size              = "Standard_B1s"
      data_disk_size_gb = 4
    },
    vm2 = {
      name              = "vm2"
      subnet_id         = local.vnets["app2"].id
      admin_username    = "paul"
      password          = "Justice2024!"
      cloud_init_file   = "${path.root}/web-server-cloud-init2.txt"
      size              = "Standard_B1s"
      data_disk_size_gb = 4
    }
  }

  # myrandom = terraform_remote_state.network.output.random_details.result
}
