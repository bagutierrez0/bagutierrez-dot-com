# set cloud provider
provider "aws" {
    region = "us-east-2"
}

# create ec2 instance
resource "aws_instance" "ec2_instance" {
    ami           = "ami-06e3c045d79fd65d9"
    instance_type = "t3.micro"

    tags = {
        Name = "bagutierrez-dot-com"
    }
}

