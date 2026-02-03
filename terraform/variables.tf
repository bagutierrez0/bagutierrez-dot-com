#################################
# VARIABLES (root) 
#################################

variable "ssh_public_key" {
  description = "SSH public key to be shared with the EC2 instance."
  type        = string
}

variable "domain_name" {
  description = "The domain name of the website to be served by the EC2 instance."
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR block allowed to SSH into the EC2 instance. Find IP at checkip.amazonaws.com"
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instance to be used."
  type        = string
  default     = "t3.micro"
}

variable "availability_zones" {
  description = "List of availability zones to use for subnets."
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}