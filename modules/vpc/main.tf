resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  enable_dns_support =  true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
 }
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name =  var.subnet_name
  }
}

