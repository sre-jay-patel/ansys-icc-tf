data "aws_ami" "al2023" {
  most_recent = true
  owners = ["137112412989"]
  filter {
    name = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_security_group" "http" {
  name = "http-sg"
  vpc_id = var.vpc_id
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.http_cidr]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = merge(var.tags, { Name = "iac-http-sg" })
}

resource "aws_instance" "web" {
  ami = coalesce(var.ami_id, data.aws_ami.al2023.id)
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.http.id]
  associate_public_ip_address = true
  key_name = var.key_name
  user_data = "#!/bin/bash\ntrue\n"
  tags = merge(var.tags, { Name = "iac-web" })
}
