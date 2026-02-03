#################################
# OUTPUTS
#################################
output "ec2_eip_public_ip" {
  description = "The public IP address of the EC2 instance Elastic IP."
  value       = aws_eip.ec2_eip.public_ip
}
