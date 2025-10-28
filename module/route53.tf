resource "aws_route53_record" "DNS" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "${var.name}.exp.in"
  type    = "A"
  ttl     = 10
  records = [aws_instance.Expenes.private_ip]
}