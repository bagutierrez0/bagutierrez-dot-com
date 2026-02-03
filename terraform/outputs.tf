#################################
# OUTPUTS
#################################
output "ec2_public_ip" {
  description = "The elastic IP address of the EC2 instance."
  value       = module.ec2.ec2_eip_public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance."
  value       = "ssh ubuntu@${module.ec2.ec2_eip_public_ip}"
}

output "route53_nameservers" {
  description = "Nameservers for the Route53 hosted zone. Update these at your domain registrar."
  value       = module.dns.nameservers
}

output "website_url" {
  description = "The URL of the portfolio website."
  value       = "https://${var.domain_name}"
}