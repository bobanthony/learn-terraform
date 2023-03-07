resource "aws_instance" "instances" {
  for_each               =  var.instances
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          =  each.value["type"]
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = each.value["name"]
  }
}
variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    cart = {
      name = "cart"
      type = "t2.small"
    }
  }
}
output "ec2" {
  value = aws_instance.instances["catalogue"].public_ip
}
