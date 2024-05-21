resource "aws_instance" "web" {
  ami           = "ami-0578f46b79ca9e3e7"
  instance_type = var.instance_type

  tags = {
    Name = var.server_name
  }
}