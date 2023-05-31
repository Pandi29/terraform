resource "aws_instance" "web2" {
  #count = 2
  ami           = var.ami_id
  instance_type = var.instancetype
}