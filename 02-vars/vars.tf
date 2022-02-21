#variable "sample" {}

variable "sample" {
  default = "NewHello"
}


output "sample" {
  value = var.sample
}

