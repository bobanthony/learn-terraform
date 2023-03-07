variable "d1" {
  default = ["deol","harleen"]
}
output "fav" {
  value = [for n in var.d1 : upper(n)]
}