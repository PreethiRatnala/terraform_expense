resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allow 22,80,8080,3306"
  

  tags = {
    Name = "allow_ports"
    CreatedBy = "Preethi"
  }

  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
        from_port        = ingress.value["port"]
        to_port          = ingress.value["port"]
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["allowed_cidr"]
    }
    
  }

  egress {
    from_port        = 0  #all ports from 0 to 0 means, opening all protocalls
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] #all protocalls
    ipv6_cidr_blocks = ["::/0"]
  }
}