module "compute" {
  source  = "app.terraform.io/learn-terraform-modules-paul/compute-web-tier-project1/azurerm"
  version = "2.0.1"
  #myrandom = terraform_remote_state.network.output.random_details.result
  rg_name  = local.rg.name
  location = local.rg.location

  instances = local.instance_list
  tags      = var.tags
}
