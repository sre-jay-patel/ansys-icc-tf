output "vpc_id" {
  value       = module.network.vpc_id
  description = "The ID of the VPC created by the network module"
}

output "public_subnet_ids" {
  value       = module.network.public_subnet_ids
  description = "The IDs of the public subnets created by the network module"
}

output "private_subnet_ids" {
  value       = module.network.private_subnet_ids
  description = "The IDs of the private subnets created by the network module"
}

output "instance_id" {
  value       = module.compute.instance_id
  description = "The ID of the web server instance"
}

output "instance_public_ip" {
  value       = module.compute.public_ip
  description = "The public IP address of the web server instance"
}
