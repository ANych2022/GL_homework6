#test
resource "aws_instance" "hw6_ec2" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  tags                   = var.tags
  vpc_security_group_ids = [aws_security_group.Security_group_grafana.id]

  user_data              = file("/userdata/user_data.sh")
}

resource "aws_security_group" "Security_group_grafana" {
  name = "Security Group hw6"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}