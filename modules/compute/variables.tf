variable "vpc_id" {
  type = string
  description = "The ID of the VPC where resources will be deployed"
}

variable "http_cidr" {
  type = string
  description = "The CIDR block allowed to access HTTP"
}

variable "tags" {
  type = map(string)
  description = "values of tags to use"
}

variable "subnet_id" {
  type = string
  description = "The ID of the subnet where the instance will be deployed"
}

variable "instance_type" {
  type = string
  description = "values of instance type to use"
}

variable "key_name" {
  type = string
  default = null
  description = "The name of the key pair to use for SSH access"
}

variable "ami_id" {
  type = string
  default = null
  description = "The AMI ID to use for the instance. If not provided, the latest Amazon Linux 2023 AMI will be used"
}
