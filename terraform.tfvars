region   = "ca-central-1"
vpc_cidr = "10.0.0.0/16"
tags = {
  Environment = "development"
  Owner       = "team"
}
azs = ["a", "b", "c"]
public_subnet_cidrs = [
  "10.0.0.0/20",
  "10.0.16.0/20",
  "10.0.32.0/20"
]
