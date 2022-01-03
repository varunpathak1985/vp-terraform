# variables used for vpc

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_tenancy" {
    default = "default"
}

variable "subnet_cidr" {
    default = "10.0.1.0/24"
}


variable "vpc_id" {}

