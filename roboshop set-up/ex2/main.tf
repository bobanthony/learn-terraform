resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = var.instances[count.index]
  }
}
variable "instances" {
  default = ["cart","catalogue","shipping","payment","user" ]
}
output "public-ip" {
  value = "aws_instance.frontend.public_ip"
}