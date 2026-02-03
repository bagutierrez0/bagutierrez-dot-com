#################################
# ROUTE53 HOSTED ZONE
#################################
resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Name = "ec2_instance_hosted_zone"
  }
}

#################################
# DNS RECORDS
#################################
resource "aws_route53_record" "root" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = 300
  records = [var.ec2_eip_public_ip]
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "CNAME"
  ttl     = 300
  records = [var.domain_name]
}