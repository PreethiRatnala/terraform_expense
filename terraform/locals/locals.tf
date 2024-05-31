locals {
  ami_id = var.image_id
  sg_id = "sg-0f9620af225d21c6a"
  instance_type = "t3.micro"
  
  tags = {
    Name = "locals"
  }
}