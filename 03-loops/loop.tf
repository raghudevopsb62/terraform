resource "null_resource" "new" {
  count = 3
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}
