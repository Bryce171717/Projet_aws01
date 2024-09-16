output "instance_ip" {
  description = "L'adresse IP publique de l'instance"
  value       = aws_instance.Aws_ec2_01.public_ip
}

output "instance_id" {
  description = "L'ID de l'instance"
  value       = aws_instance.Aws_ec2_01.id
}

output "instance_az" {
  description = "Zone de disponibilité de l'instance EC2"
  value       = aws_instance.Aws_ec2_01.availability_zone
}
