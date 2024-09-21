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

variable "key_name" {
  description = "Nom de la clé SSH à utiliser pour l'instance"
}

variable "vpc_security_group_ids" {
  description = "List of security group ids to assign to the instances"
  default = "sg-0cdb94c66a06eb82f"
}
