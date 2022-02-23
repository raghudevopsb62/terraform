variable "comp" {
  type = map(string)
}


resource "null_resource" "null" {
  triggers = {
    abc = timestamp()
  }
  provisioner "local-exec" {
    command = "Component Name = ${var.comp["name"]}"
  }
}

