variable "region" {
  type        = string
  description = "The AWS region to deploy resources in"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "tags" {
  type = map(string)
  default = {
    Project = "iac-challenge"
  }
  description = "A map of tags to assign to the resources"
}

variable "azs" {
  type        = list(string)
  description = "values of availability zones to use"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "A list of CIDR blocks for the public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "A list of CIDR blocks for the private subnets"
}

variable "instance_type" {
  type        = string
  description = "values of instance type to use"
}

variable "key_name" {
  type        = string
  default     = null
  description = "The name of the key pair to use for SSH access"
}

variable "ami_id" {
  type        = string
  default     = null
  description = "The AMI ID to use for the instance. If not provided, the latest Amazon Linux 2023 AMI will be used"
}
