resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "match"
  }
}