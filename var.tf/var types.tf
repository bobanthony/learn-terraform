variable "example1" {
  default = "Hello world"
}

variable "example2" {
  default = [
    "Good day",
    1997,
    true,
    "harleen deol"
  ]
}

variable "example3" {
  default = {
    strings = "deol",
    numbers = 21,
    boolean = true

  }
}

output "types" {
  value = "variable example1 - ${var.example1}, first value in the list - ${var.example2[0]}, boolean
value of the map - ${var.example3["boolean"]}"
}

