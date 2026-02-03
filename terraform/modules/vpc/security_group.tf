#################################
# SECURITY GROUP
#################################
resource "aws_security_group" "web_server" {
  name        = "web_server_sg"
  description = "Security group for the web server."
  vpc_id      = aws_vpc.main_vpc.id

  tags = {
    Name = "web_server_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.web_server.id
  description       = "SSH access."
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = var.ssh_allowed_cidr
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.web_server.id
  description       = "HTTP access."
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.web_server.id
  description       = "HTTPS access."
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "all_outbound" {
  security_group_id = aws_security_group.web_server.id
  description       = "All outbound traffic."
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}