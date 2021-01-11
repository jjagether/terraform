output "vpc_dev_id" {
  value = aws_vpc.vpc_dev.id
}

output "vpc_dev_public_subnets" {
  value = [aws_subnet.vpc_dev_public_subnet1.id, aws_subnet.vpc_dev_public_subnet2.id]
}

output "vpc_dev_private_subnets" {
  value = [aws_subnet.vpc_dev_private_subnet1.id, aws_subnet.vpc_dev_private_subnet2.id]
}

output "vpc_dev_sg_id" {
  value = aws_default_security_group.vpc_dev_sg.id
}
