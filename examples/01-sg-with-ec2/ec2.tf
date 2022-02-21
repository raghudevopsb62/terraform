resource "aws_instance" "web" {
  ami           = "ami-0d997c5f64a74852c"
  instance_type = "t3.micro"

  tags = {
    Name = "web"
  }
}

