resource "aws_spot_instance_request" "deol" {
  ami           = "ami-05aea24181131bed8"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  instance_type = "t2.micro"
  wait_for_fulfillment = true

  tags = {
    Name = "promotheus-test1"
  }
}
resource "aws_ec2_tag" "deol" {
  resource_id = aws_spot_instance_request.deol.spot_instance_id
  key         = "Name"
  value       = "promotheus-test1"
}
resource "aws_spot_instance_request" "match" {
  ami           = "ami-05aea24181131bed8"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  instance_type = "t2.micro"

  tags = {
    Name = "promtetheus-test2"
  }
}
resource "aws_ec2_tag" "match" {
  resource_id = aws_spot_instance_request.match.spot_instance_id
  key         = "Name"
  value       = "promotheus-test2"
}
