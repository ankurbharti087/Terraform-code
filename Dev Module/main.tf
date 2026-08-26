module "resource_group" {
  source = "../Child module/Resource Group"
  rg27   = var.rg27
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Child module/Virtual network"
  vnet27     = var.vnet27
}