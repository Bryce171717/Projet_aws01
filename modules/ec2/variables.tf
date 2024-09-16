variable "ami" {
  description = "AMI utilisée pour l'instance EC2"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID du sous-réseau où l'instance EC2 sera déployée"
}

variable "vpc_id" {
  description = "ID du VPC"
}

variable "instance_name" {
  description = "Nom de l'instance EC2"
  default     = "Aws_ec2_01"
}

variable "sg_name" {
  description = "Nom du groupe de sécurité"
  default     = "web-sg"
}
