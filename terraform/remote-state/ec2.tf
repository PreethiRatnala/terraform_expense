resource "aws_instance" "db1" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = "sg-0f9620af225d21c6a"
  instance_type = "t3.micro"

  tags = {
    Name = "locals"
  }
}
