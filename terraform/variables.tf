# variables.tf 
# like setting the data types and metadata of variables
# to be used within the terraform files, very useful

variable "ssh_public_key" {
    description = "SSH public key to be shared to the EC2 instance."
    type        =  string
}

variable "environment" {
    description = "Environment name"
    type        = string
    default     = "dev"
}