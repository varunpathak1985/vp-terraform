# variables used for ec2-instances

variable "ec2_count" {
    default = "1"
}

variable "ec2_ami" {}

variable "ec2_type" {
    default = "t2.micro"
}

variable "subnet_id" {}
    