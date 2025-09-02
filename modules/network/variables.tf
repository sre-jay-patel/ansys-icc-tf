variable "tags" {
  type = map(string)
  description = "A map of tags to assign to the resources"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC"
}
