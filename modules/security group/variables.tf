variable "name" {
  description = "The name of the security group"
  type        = string
}

variable "description" {
  description = "The description of the security group"
  type        = string
  default     = "Security group managed by Terraform"
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

variable "ingress_from_port" {
  description = "The starting port for ingress traffic"
  type        = number
}

variable "ingress_to_port" {
  description = "The ending port for ingress traffic"
  type        = number
}

variable "ingress_protocol" {
  description = "The protocol for ingress traffic"
  type        = string
  default     = "tcp"
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks for ingress traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "egress_from_port" {
  description = "The starting port for egress traffic"
  type        = number
  default     = 0
}

variable "egress_to_port" {
  description = "The ending port for egress traffic"
  type        = number
  default     = 0
}

variable "egress_protocol" {
  description = "The protocol for egress traffic"
  type        = string
  default     = "-1"
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks for egress traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
