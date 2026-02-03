#################################
# OUTPUTS 
#################################
output "vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs."
  value       = aws_subnet.public_subnet[*].id
}

output "security_group_id" {
  description = "The ID of the web server security group."
  value       = aws_security_group.web_server.id
}