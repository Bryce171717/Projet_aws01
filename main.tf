# Appel du module VPC
module "vpc" {
  source      = "./modules/vpc"
  
  # Utilisation des variables depuis variables.tf
  cidr_block         = var.cidr_block
  subnet_cidr_block  = var.subnet_cidr_block
  vpc_name           = var.vpc_name
  subnet_name        = var.subnet_name
  availability_zone  = var.availability_zone
}

# Appel du module EC2
/*module "ec2" {
  source        = "./modules/ec2"
  
  # Utilisation des variables depuis variables.tf
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
  sg_name       = var.sg_name

  # Utilisation des outputs du module VPC
  subnet_id     = module.vpc.subnet_id
  vpc_id        = module.vpc.vpc_id

  # clé SSH
  key_name    = aws_key_pair.terraform_key.key_name
}
*/

# Déclaration de la clé SSH dans le fichier main.tf à la racine
resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform_key"
  public_key = file("~/.ssh/terraform_key.pub")
}

module "ec2_instances" {
  source = "./modules/ec2"

  for_each = var.instance

  instance_type = each.value.instance_type
  ami           = each.value.ami
  key_name      = each.value.key_name

  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id   # Utilisez un seul sous-réseau
  security_group_ids = [module.security_group.security_group_id]
}

module "security_group" {
  source              = "./modules/security_group"
  name                = "web_sg"
  description         = "Security group for web server"
  vpc_id              = module.vpc.vpc_id
  ingress_from_port   = 80
  ingress_to_port     = 80
  ingress_protocol    = "tcp"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_from_port    = 0
  egress_to_port      = 0
  egress_protocol     = "-1"
  egress_cidr_blocks  = ["0.0.0.0/0"]
  tags                = {
    Name = "web_sg"
  }
}
