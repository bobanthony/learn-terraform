terraform {
  backend "s3" {
    bucket = "learn-devops-online"
    key    = "05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "match"
  }
}