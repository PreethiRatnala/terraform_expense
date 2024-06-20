resource "aws_instance" "expense" {
  for_each = var.instance_type
  ami = "ami-031d574cddc5bb371"
  vpc_security_group_ids = ["sg-0f9620af225d21c6a"]
  instance_type = each.value

  tags = {
    Name = each.key
    Module = each.key
  }
}
