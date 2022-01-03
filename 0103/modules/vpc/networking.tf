# module definition to to create vpc

resource "aws_vpc" "tf-vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.vpc_tenancy}"

  tags = {
    Name = "tf-vpc"
  }
}


resource "aws_subnet" "tf-subnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "tf-subnet-1"
  }
}

output "vpc_id" {
    value = "${aws_vpc.tf-vpc.id}"
}


output "subnet_id" {
    value = "${aws_subnet.tf-subnet.id}"
}