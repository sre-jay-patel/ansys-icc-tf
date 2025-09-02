variable "region" { 
  type = string
  description = "The AWS region to deploy resources in"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC"
}

variable "tags" {
  type = map(string)
  default = {
    Project = "iac-challenge"
  }
  description = "A map of tags to assign to the resources"
}
