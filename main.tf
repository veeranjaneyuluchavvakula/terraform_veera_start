resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.ins
  key_name = var.ke
}