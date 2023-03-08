resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "var.component"
  }
}
resource "aws_route53_record" "deol" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "$(var.component)-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.ec2.private_ip]
}
variable "component" {}