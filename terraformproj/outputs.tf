output "vpcdetails" {
  value = aws_vpc.myvpc.arn
  description = "ARN of created VPC"
}