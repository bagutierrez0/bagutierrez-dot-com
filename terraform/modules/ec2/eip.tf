#################################
# EIP (elastic IP)
#################################
resource "aws_eip" "ec2_eip" {
  instance = aws_instance.ec2_instance.id
  domain = "vpc"

  tags = {
    Name = "main_web_server_eip"
  }
}