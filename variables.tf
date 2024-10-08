# Variables pour le VPC
variable "cidr_block" {
  description = "CIDR Block du VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR Block du sous-réseau"
  default     = "10.0.1.0/24"
}

variable "vpc_name" {
  description = "Nom du VPC"
  default     = "my-vpc"
}

variable "subnet_name" {
  description = "Nom du sous-réseau"
  default     = "my-subnet"
}

variable "availability_zone" {
  description = "Zone de disponibilité pour le sous-réseau"
  default     = "eu-west-3"
}

# Variables pour l'EC2
variable "ami" {
  description = "AMI utilisée pour l'instance EC2"
  default     = "ami-0574a94188d1b84a1"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Nom de l'instance EC2"
  default     = "Aws_ec2_01"
}

variable "sg_name" {
  description = "Nom du groupe de sécurité associé à l'instance EC2"
  default     = "my-web-sg"
}
