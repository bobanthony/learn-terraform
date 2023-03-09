variable "match" {
  default = {
    "cart" = {
      "private_ip" = "172.31.2.74"
    }
    "catalogue" = {
      "private_ip" = "172.31.12.140"
    }
  }
}
output "match" {
  value = var.match["catalogue"].private_ip
}