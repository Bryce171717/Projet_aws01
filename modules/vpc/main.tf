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

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "my-internet-gateway"
  }
}

# Déclaration de la table de routage pour le VPC
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-route-table"
  }
}

# Déclaration de la route vers la passerelle Internet pour l'accès public
resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.this.id
}

# Association de la table de routage au sous-réseau
resource "aws_route_table_association" "public_subnet" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.main.id
}
