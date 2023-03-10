
module "ec2" {
  for_each      = var.instances
  source        = "./ec2"
  component     = each.value["name"]

  sg_id           = module.sg.sg_id

  instance_type = ""
}
module "sg" {
  source = "./sg"
}
variable "instances" {
  default = {
    frontend = {
      name = "frontend"
      type = "t3.micro"
    }
    cart = {
      name = "cart"
      type = "t3.micro"
    }
  }
}