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
  default     = "eu-west-3a"
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

variable "key_name" {
  description = "Nom de la clé SSH à utiliser pour l'instance"
  default     = "terraform_key"
}
variable "instances" {
  description = "Configuration for multiple EC2 instances"
  type = map(object({
    instance_type = string
    ami           = string
    key_name      = string
  }))
  default = {
    "instance1" = {
      instance_type = "t2.micro"
      ami           = "ami-0574a94188d1b84a1"
      key_name      = "my-key"
    },
    "instance2" = {
      instance_type = "t3.large"
      ami           = "ami-0574a94188d1b84a1"
      key_name      = "my-key"
    }
  }
}