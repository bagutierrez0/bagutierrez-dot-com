#################################
# VARIABLES
#################################
variable "ssh_public_key" {
  description = "SSH public key to be shared with the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instance."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the EC2 instance in."
  type        = string
}

variable "security_group_id" {
  description = "The security group ID to attach to the EC2 instance."
  type        = string
}
