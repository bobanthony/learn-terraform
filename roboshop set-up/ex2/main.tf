resource "aws_instance" "ec2" {
  count                  = 5
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
}
variable "instances" {
  default = ["cart","catalogue","shipping","payment" ]
}
