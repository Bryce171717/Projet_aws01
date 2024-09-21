output "vpc_id" {
  description = "L'ID du VPC créé"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "L'ID du sous-réseau créé"
  value       = aws_subnet.main.id
}

output "public_subnet" {
  description = "public subnet"
  value       = aws_subnet.public_subnet.id
}

