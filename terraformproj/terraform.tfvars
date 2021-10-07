terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "reidacus-terraformdev"

    workspaces {
      name = "terraformdev"
    }
  }
}

ecr_name = "myvariableecrname"
scan_on_push = "false"
image_tag_mutability = "MUTABLE"
