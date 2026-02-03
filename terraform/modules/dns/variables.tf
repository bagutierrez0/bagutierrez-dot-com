#################################
# VARIABLES
#################################
variable "domain_name" {
  description = "The domain name for the hosted zone and DNS records."
  type        = string
}

variable "ec2_eip_public_ip" {
  description = "The Elastic IP public address of the EC2 instance."
  type        = string
}
