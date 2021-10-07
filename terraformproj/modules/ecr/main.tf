terraform {
  required_version = ">=0.12"
}

resource "aws_ecr_repository" "myecr" {
    name = var.ecr_name
    image_scanning_configuration {
      scan_on_push = var.scan_on_push
    }
    image_tag_mutability = var.image_tag_mutability
}