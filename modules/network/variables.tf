variable "tags" {
  type = map(string)
  description = "A map of tags to assign to the resources"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC"
}

variable "azs" {
  type = list(string)
  description = "A list of availability zones to use"
}

variable "public_subnet_cidrs" {
  type = list(string)
  description = "A list of CIDR blocks for the public subnets"
}
