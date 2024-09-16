output "instance_ip" {
  description = "adresse IP publique de l'instance EC2"
  value       = module.ec2.instance_ip
}

output "instance_id" {
  description = "ID de l'instance EC2"
  value       = module.ec2.instance_id
}

output "instance_az" {
  description = " zone de disponibilité où l'instance est déployée"
  value       = module.ec2.instance_az
}
