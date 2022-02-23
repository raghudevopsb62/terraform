variable "COMPONENTS" {
  default = ["cart", "catalogue", "frontend", "mongodb", "mysql", "payment", "rabbitmq", "redis", "shipping", "user"]
}

variable "PORTS" {
  default = [8080, 8080, 80, 27017, 3306, 8080, 5672, 6379, 8080, 8080]
}

variable "MONITOR" {
  default = ["yes", "yes", "yes", "no", "no", "yes", "no", "no", "yes", "yes"]
}

variable "COMP" {
  default = [
    {
      name    = "frontend"
      port    = 80
      monitor = "yes"
    },
    {
      name    = "catalogue"
      port    = 8080
      monitor = "yes"
    }
  ]
}

resource "null_resource" "null" {
  for_each = var.COMP
  triggers = {
    abc = timestamp()
  }
  provisioner "local-exec" {
    command = "Component Name = ${each.value["name"]}"
  }
}
