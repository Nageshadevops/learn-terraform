resource "aws_instance" "frontend" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "backend" {
  ami                    = var.ami
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type          = var.instance_type
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami                    = var.ami
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type           = var.instance_type
  tags = {
    Name = "mysql"
  }
}

variable ami {
  default = ami-041e2ea9402c46c32
}

variable "vpc_security_group_ids" {
  default = "sg-0989be542cc7aee19"
}

variable "instance_type" {
  default = "t3.micro"
}