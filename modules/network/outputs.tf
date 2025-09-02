output "vpc_id" {
  value = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "public_subnet_ids" {
  value = [for i in sort(keys(aws_subnet.public)) : aws_subnet.public[i].id]
  description = "The IDs of the public subnets"
}
