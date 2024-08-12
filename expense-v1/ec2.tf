resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0989be542cc7aee19"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "backend" {
  ami           = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-0989be542cc7aee19"]
  instance_type = "t3.micro"
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-0989be542cc7aee19"]
  instance_type = "t3.micro"
  tags = {
    Name = "mysql"
  }
}
