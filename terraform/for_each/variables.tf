variable "instance_type" {
  type = map
  default = {
    db = "t3.micro"
    frontend = "t3.small"
    backend = "t3.small"
  }
}