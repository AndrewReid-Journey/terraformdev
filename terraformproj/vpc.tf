module "createvpc" {
  source = "./modules/vpc"
  vpcname = var.vpcname
}