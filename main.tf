provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

variable "example_instance_type"  {
  default = "t2.micro"
}

/*
resource "aws_security_group" "example_ec2" {
  name  = "example_ec2"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0a1c2ec61571737db"
  instance_type = var.example_instance_type
  vpc_security_group_ids = [aws_security_group.example_ec2.id]

  tags = {
    Name = "example"
  }

  user_data = file("./user_data.sh")
}

output "example_public_dns" {
  value = aws_instance.example.public_dns
}

*/

module "web_server" {
  source = "./http_server"
  instance_type = var.example_instance_type
}

output "public_dns" {
  value = module.web_server.public_dns
}