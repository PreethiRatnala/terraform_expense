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

variable "common_tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "true"
  }
  
}

#r53 variables

variable "zone_id" {
  default = "Z074399918M59UN2UNCDP"
}

variable "domain_name" {
  default = "hkinfo.fyi"
}