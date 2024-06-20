resource "aws_instance" "db1" {
  ami = "ami-031d574cddc5bb371"
  vpc_security_group_ids = ["sg-0f9620af225d21c6a"]
  instance_type = "t3.micro"

  tags = {
    Name = "locals"
  }
}
