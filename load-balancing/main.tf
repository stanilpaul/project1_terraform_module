module "load-balancing" {
  source   = "app.terraform.io/learn-terraform-modules-paul/load-balancing-project1/azurerm"
  version  = "1.0.0"
  rg_name  = local.rg.name
  location = local.rg.location

  public_ip_id       = local.public_ip["lb_external"].id
  name_external_lb   = var.external_lb
  public_vm_nics     = { "vm1" = local.nic["vm1"].id }
  internal_lb_name   = var.internal_lb
  internal_subnet_id = local.subnets["app2"].id
  internal_vm_nics   = { "vm2" = local.nic["vm2"].id }
  tags               = var.tags
}
