resource "aws_vpc" "myvpc" {
    tags = {
      "name" = var.vpcname
    }
    
    cidr_block = "10.0.0.0/24"
  
}