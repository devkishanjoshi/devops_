resource "aws_security_group" "devops-sg-530" {
  name        = "devops-sg-530"
  description = "Allow HTTP and SSH traffic via Terraform"

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

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "devops530instance" {
  ami           = var.ami #"ami-0da59f1af71ea4ad2"
  instance_type = var.instance_type
  key_name = "devops-530"
  security_groups = [aws_security_group.devops-sg-530.name]
  tags = {
    Name = "MyDevOps530TestInstance"
  }
}