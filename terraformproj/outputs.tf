output "vpcdetails" {
  value = createvpc.myvpc.arn
  description = "ARN of created VPC"
}