variable "cidr_block" {
  description = "CIDR Block du VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nom du VPC"
  default     = "main-vpc"
}

variable "subnet_cidr_block" {
  description = "CIDR Block du sous-réseau"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Zone de disponibilité pour le sous-réseau"
  default     = "eu-west-3"
}

variable "subnet_name" {
  description = "Nom du sous-réseau"
  default     = "main-subnet"
}


