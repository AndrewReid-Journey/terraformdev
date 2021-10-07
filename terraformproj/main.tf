provider "aws" {
    region = "eu-west-1"
}

locals {
  append = "myappended"
}

module "satis" {
  source = "./modules/ecr"
  ecr_name = var.ecr_name
  scan_on_push = var.scan_on_push
  image_tag_mutability = var.image_tag_mutability
}

