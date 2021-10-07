output "outputaccess" {
  value = module.satis.ecr_stuff.arn
}

output "testlisting" {
  value=tolist(data.aws_iam_roles.development.arns)[0]
}