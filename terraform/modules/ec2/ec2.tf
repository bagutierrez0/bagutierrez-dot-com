#################################
# AMI DATA SOURCE
#################################
data "aws_ami" "ubuntu_server_24_04" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

#################################
# KEY PAIR
#################################
resource "aws_key_pair" "deployer" {
  key_name   = "deployer_key"
  public_key = var.ssh_public_key
}

#################################
# EC2 INSTANCE
#################################
resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ubuntu_server_24_04.id
  instance_type = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name = aws_key_pair.deployer.key_name

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
    encrypted = true
  }

  tags = {
    Name =  "main_web_server"
  }
}