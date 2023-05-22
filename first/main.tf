/*
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
*/
resource "aws_instance" "web" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
}

# output "instance_id" {
#   value = aws_instance.web.id
# }

resource "aws_ec2_instance_state" "test" {
  instance_id = aws_instance.web.id
  state       = "stopped"
}