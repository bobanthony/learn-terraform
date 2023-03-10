resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "frontend-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "catalogue-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "user-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "shipping-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "payment" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "payment-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "catalogue"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "mysql-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "redis" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "redis-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "rabbitmq-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "dispatch" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "dispatch"
  }
}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "dispatch-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.dispatch.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "mongodb-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "cart" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b173a0934aeda686"]
  tags = {
    name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z00739661SEOHEMKPHEUL"
  name    = "cart-dev.learndevopsb71solutions.site"
  type    = "A"
  ttl     = 300
  records = [aws_instance.cart.private_ip]
}
