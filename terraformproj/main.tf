terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "reidacus"

    workspaces {
      name = "terraformdev"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "eu-west-1"
}

locals {
  append = "myappended"
  }