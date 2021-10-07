provider "aws" {
    region = "eu-west-1"
}
resource "aws_ecr_repository" "myecr" {
    name = var.ecr_name
    image_scanning_configuration {
      scan_on_push = var.scan_on_push
    }
    image_tag_mutability = var.image_tag_mutability
}
output "reponame" {
    value = aws_ecr_repository.myecr.repository_url
    description = "My repo URL"
}