terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "reidacus-terraformdev"

    workspaces {
      name = "terraformdev"
    }
  }
}

variable "ecr_name" {
    description = "The name to give the ECR"
    type = string
}

variable "scan_on_push" {
    description = "Scan this repo on push? True or False"
    type = string
}
variable "image_tag_mutability" {
    description = "MUTABLE or IMMUTABLE image tags?"
    type = string
}