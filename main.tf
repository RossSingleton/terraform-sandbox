provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-07ee42ba0209b6d77"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["vpc-0589f9e1393afcf96"]
  subnet_id = "subnet-04d13f14b77d3115d"

  tags = {
    Name = "Ross Test Instance"
    Purpose = "To experiment with terraform"
  }
}