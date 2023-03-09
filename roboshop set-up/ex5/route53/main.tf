resource "aws_route53_record" "record" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "${var.component}-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}
variable "private_ip" {}
variable "component" {}