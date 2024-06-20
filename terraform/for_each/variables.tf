variable "instance_type" {
  type = map
  default = {
    db = "t3.micro"
    frontend = "t3.small"
    backend = "t3.small"
  }
}

variable "common_tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "true"
  }
  
}

variable "domain_name" {
  default = "hkinfo.fyi"
}

variable "zone_id" {
  default = "Z074399918M59UN2UNCDP"
}