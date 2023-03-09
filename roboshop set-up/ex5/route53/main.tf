resource "aws_route53_record" "record" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "${var.component}-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.ec2.private_ip]
}