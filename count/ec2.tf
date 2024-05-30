resource "aws_instance" "db" {
  count = length((var.instance_names))
  ami = var.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = var.instance_names[count.index]
  }
}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic and all outbound traffic"
  

  tags = {
    Name = "allow_ssh"
    CreatedBy = "Preethi"
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0  #all ports from 0 to 0 means
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] #all protocalls
    ipv6_cidr_blocks = ["::/0"]
  }
}

