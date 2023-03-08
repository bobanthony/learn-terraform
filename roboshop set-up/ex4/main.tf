
module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
 
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