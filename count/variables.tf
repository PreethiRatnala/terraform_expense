variable "image_id" {
  type = string
  default = "ami-090252cbe067a9e58"
  description = "RHEL-9 os"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "instance_names" {
  type = list
  default = ["db","backend","frontend"]
}

