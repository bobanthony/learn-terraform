resource "aws_instance" "ec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
  tags = {
    name = "var.component"
  }
}
variable "component" {}
variable "instance_type" {}
variable "sg_id" {}

output "private_ip" {
  value = aws_instance.ec2.private_ip
}