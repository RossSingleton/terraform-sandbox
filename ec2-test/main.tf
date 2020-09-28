terraform {
    backend "s3" {
        bucket = "ross-temp-bucket"
        key    = "terraform.tfstate"
        region = "eu-west-1"
        profile = "devopsguys-sandbox"
    }
}

provider "aws" {
  region = "eu-west-1"
  profile = "devopsguys-sandbox"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "Ross-Test-VPC"
  }
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "Ross-Test-Subnet"
    }
}

resource "aws_security_group" "secgroup" {
  name = "ross-test-security-group"
  vpc_id = aws_vpc.main.id
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "ec2_instance" {
  ami           = "ami-07ee42ba0209b6d77"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.secgroup.id]
  subnet_id = aws_subnet.subnet.id

  tags = {
    Name = "Ross Test Instance"
    Purpose = "To experiment with terraform"
  }
}