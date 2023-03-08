resource "aws_instance" "deol" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ?  "t3.micro" : var.instance_type
}
variable "instance_type" {}

resource "aws_instance" "harleen" {
  count         = tobool(var.create_instances) ? 1 : 0
  ami           = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ?  "t3.micro" : var.instance_type
}
 variable "create_instances" {}