# Definição do Security Group do AWS
resource "aws_security_group" "acesso-ssh" {
  name = "acesso-ssh"
  description = "Acesso SSH"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cdir_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}

# Definição do Security Group do AWS
resource "aws_security_group" "acesso-ssh-us-east-2" {
  provider = "aws.us-east-2"
  name = "acesso-ssh-us-east-2"
  description = "Acesso SSH"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cdir_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}