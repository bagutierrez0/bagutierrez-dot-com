# set cloud provider
provider "aws" {
    region = "us-east-2"
}

# setup aws ssh key pair
resource "aws_key_pair" "deployer" {
    key_name   = "deployer_key"
    public_key = var.ssh_public_key
}

# create a vpc
resource "aws_vpc" "main" {
    # fill this out later
}

# setup the security group
resource "aws_security_group" "name" {
    # fill this out later
}


# create ec2 instance
resource "aws_instance" "ec2_instance" {
    ami           = "ami-06e3c045d79fd65d9"
    instance_type = "t3.micro"

    tags = {
        Name = "bagutierrez-dot-com"
    }

    key_name = aws_key_pair.deployer.key_name
}

