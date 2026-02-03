#################################
# VARIABLES
#################################
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones to use for subnets."
  type        = list(string)
}

variable "ssh_allowed_cidr" {
  description = "CIDR block allowed to SSH into the EC2 instance."
  type        = string
}