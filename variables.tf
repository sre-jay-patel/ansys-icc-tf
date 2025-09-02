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
