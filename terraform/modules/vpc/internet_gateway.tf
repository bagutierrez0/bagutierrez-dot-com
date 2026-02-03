#################################
# INTERNET GATEWAY
#################################
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "main_vpc_internet_gateway"
  }
}