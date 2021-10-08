resource "aws_vpc" "myvpc" {
    tags = {
      "Name" = var.vpcname
    }
    
    cidr_block = "10.0.2.0/24"
  
}